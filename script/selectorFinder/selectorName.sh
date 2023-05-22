#!/bin/bash

# Read the target selector and function arguments from command-line arguments
target_selector=$1
function_arguments=$2

# Function to generate function names
function generate_function_name() {
    local arguments=("$@")
    local function_name=""

    # Remove spaces from function arguments
    arguments=${arguments// /}

    # Split the function arguments into an array based on ","
    IFS=',' read -ra arg_array <<< "$arguments"

    # Loop through the argument array and generate a function name
    for arg in "${arg_array[@]}"; do
        case "$arg" in
            "uint"* | "int"*)
                function_name+="uint"
                ;;
            "address")
                function_name+="addr"
                ;;
            "bytes"*)
                function_name+="bytes"
                ;;
            "bool")
                function_name+="bool"
                ;;
            "string")
                function_name+="str"
                ;;
            *)
                function_name+="unknown"
                ;;
        esac
    done

    # Truncate the function name if it exceeds 256 characters
    function_name="${function_name:0:256}"

    echo "$function_name"
}

# Generate a function name based on the provided arguments
generated_function_name=$(generate_function_name "$function_arguments")

# Replace invalid characters with "_"
generated_function_name="${generated_function_name//[^a-zA-Z0-9$_]/_}"

echo "Generated Function Name: $generated_function_name"

# Check if the generated function name matches the target selector
if [[ "$target_selector" == "$(printf '%s' "$generated_function_name" | xxd -p)" ]]; then
    echo "Generated function name matches the target selector!"
else
    echo "Generated function name does not match the target selector."
fi
