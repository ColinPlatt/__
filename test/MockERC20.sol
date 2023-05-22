// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity >=0.8.0;

import {$$$$$$____$_$_$$__$$$____$____$$} from "src/$$$$$$____$_$_$$__$$$____$____$$.sol";

contract MockERC20 is $$$$$$____$_$_$$__$$$____$____$$ {
    constructor(
        string memory _name,
        string memory _symbol,
        uint8 _decimals
    ) $$$$$$____$_$_$$__$$$____$____$$(_name, _symbol, _decimals) {}

    function mint(address to, uint256 value) public virtual {
        _mint(to, value);
    }

    function burn(address from, uint256 value) public virtual {
        _burn(from, value);
    }
}
