extern crate tiny_keccak;
use std::sync::{Arc, atomic::{AtomicBool, AtomicUsize, Ordering}};
use rayon::prelude::*;
use tiny_keccak::{Hasher, Keccak};

fn generate_function_signature(name: &str, args: &str) -> [u8; 4] {
    let mut keccak = Keccak::v256();
    let mut output = [0u8; 32];
    let signature = format!("{}{}", name, args);
    keccak.update(signature.as_bytes());
    keccak.finalize(&mut output);
    let mut result = [0u8; 4];
    result.copy_from_slice(&output[0..4]);
    result
}

fn generate_permutations(max_length: usize, valid_chars: &[char], print_length: usize, target_selector: [u8; 4]) {
    let valid_chars_len = valid_chars.len();
    let counter = AtomicUsize::new(0);
    let found = Arc::new(AtomicBool::new(false));
    (1..=max_length.min(32)).into_par_iter().for_each(|length| {
        let found = Arc::clone(&found);
        for n in 0..valid_chars_len.pow(length as u32) {
            if found.load(Ordering::SeqCst) {
                return;
            }
            let mut combination = Vec::with_capacity(length);
            let mut n = n;
            for _ in 0..length {
                combination.push(valid_chars[n % valid_chars_len]);
                n /= valid_chars_len;
            }
            let function_name: String = combination.into_iter().collect();
            let count = counter.fetch_add(1, Ordering::SeqCst);

            let current_selector = generate_function_signature(&function_name, "");
            if current_selector == target_selector {
                println!("Match found! Function name: {}", function_name);
                found.store(true, Ordering::SeqCst);
                break;
            }
            if count % print_length == 0 {
                println!("Count {}: {}", count, function_name);
            }
        }
    });
}

fn main() {
    let valid_chars = vec!['$', '_'];
    let max_length = 256;
    let print_length = 10000000;
    let target_name = "ERC20";
    let target_args = "";
    let target_selector = generate_function_signature(target_name, target_args);
    println!("Original function: {}{}\nOriginal selector: {:02x}{:02x}{:02x}{:02x}",
    target_name, target_args,
        target_selector[0], target_selector[1], target_selector[2], target_selector[3]);

    generate_permutations(max_length, &valid_chars, print_length, target_selector);
}
