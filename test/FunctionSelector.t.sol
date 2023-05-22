// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "solmate/tokens/ERC20.sol";
import "src/$$$$$$____$_$_$$__$$$____$____$$.sol";

contract mockERC20 is ERC20("mock", "mock", 18) {

}

contract mock$$$$$$____$_$_$$__$$$____$____$$ is $$$$$$____$_$_$$__$$$____$____$$("mock", "mock", 18) {

}

contract FunctionSelectorTest is Test {
    mockERC20 public token;
    mock$$$$$$____$_$_$$__$$$____$____$$ public moddedToken;

    function setUp() public {
        token = new mockERC20();
        moddedToken = new mock$$$$$$____$_$_$$__$$$____$____$$();
    }

    function testApproveSelector() public {
        bytes4 approveSelector = token.approve.selector;
        assertEq(abi.encodePacked(approveSelector), abi.encodePacked(hex'095ea7b3'));

        bytes4 moddedApproveSelector = moddedToken.__$$$$___$$_$_$$__$_$_$$__$$$$.selector;
        assertEq(abi.encodePacked(moddedApproveSelector), abi.encodePacked(hex'095ea7b3'));

        assertEq(abi.encodePacked(approveSelector), abi.encodePacked(moddedApproveSelector));

        string memory approveSignature = "approve(address,uint256)";
        string memory tmpSig = "__$$$$___$$_$_$$__$_$_$$__$$$$(address,uint256)";

        assertEq(abi.encodePacked(bytes4(keccak256(bytes(approveSignature)))), abi.encodePacked(hex'095ea7b3'));
        assertEq(abi.encodePacked(bytes4(keccak256(bytes(tmpSig)))), abi.encodePacked(hex'095ea7b3'));

    }

        function testDecimalsSelector() public {
        bytes4 decimalsSelector = token.decimals.selector;
        assertEq(abi.encodePacked(decimalsSelector), abi.encodePacked(hex'313ce567'));

        string memory decimalsSignature = "decimals()";
        assertEq(abi.encodePacked(bytes4(keccak256(bytes(decimalsSignature)))), abi.encodePacked(hex'313ce567'));

        string memory tmpSig = "$_$$$$$$_$$_$$$$_$$$$_$$$_$_$$()";
        assertEq(abi.encodePacked(bytes4(keccak256(bytes(tmpSig)))), abi.encodePacked(hex'313ce567'));

        bytes4 moddedSelector = moddedToken.$_$$$$$$_$$_$$$$_$$$$_$$$_$_$$.selector;
        assertEq(abi.encodePacked(moddedSelector), abi.encodePacked(hex'313ce567'));

        assertEq(abi.encodePacked(decimalsSelector), abi.encodePacked(moddedSelector));
   
    }

    
    function testNameSelector() public {
        bytes4 nameSelector = token.name.selector;
        assertEq(abi.encodePacked(nameSelector), abi.encodePacked(hex'06fdde03'));

        string memory nameSignature = "name()";
        assertEq(abi.encodePacked(bytes4(keccak256(bytes(nameSignature)))), abi.encodePacked(hex'06fdde03'));

        bytes4 moddedSelector = moddedToken.__$$____$_$___$_$_$_$_$__$$___.selector;
        assertEq(abi.encodePacked(moddedSelector), abi.encodePacked(hex'06fdde03'));

        assertEq(abi.encodePacked(nameSelector), abi.encodePacked(moddedSelector));
    
    }

    function testSymbolSelector() public {
        bytes4 symbolSelector = token.symbol.selector;
        assertEq(abi.encodePacked(symbolSelector), abi.encodePacked(hex'95d89b41'));

        string memory symbolSignature = "symbol()";
        assertEq(abi.encodePacked(bytes4(keccak256(bytes(symbolSignature)))), abi.encodePacked(hex'95d89b41'));

        bytes4 moddedSelector = moddedToken._$_$____$$__$____$$_$$___$___$_.selector;
        assertEq(abi.encodePacked(moddedSelector), abi.encodePacked(hex'95d89b41'));

        assertEq(abi.encodePacked(symbolSelector), abi.encodePacked(moddedSelector));
    }

    function testTotalSupplySelector() public {
        bytes4 totalSupplySelector = token.totalSupply.selector;
        assertEq(abi.encodePacked(totalSupplySelector), abi.encodePacked(hex'18160ddd'));

        string memory totalSupplySignature = "totalSupply()";
        assertEq(abi.encodePacked(bytes4(keccak256(bytes(totalSupplySignature)))), abi.encodePacked(hex'18160ddd'));

        bytes4 moddedSelector = moddedToken._$___$$$$$$$________$_$$___$$__.selector;
        assertEq(abi.encodePacked(moddedSelector), abi.encodePacked(hex'18160ddd'));

        assertEq(abi.encodePacked(totalSupplySelector), abi.encodePacked(moddedSelector));
    }

    function testTransferSelector() public {
        bytes4 transferSelector = token.transfer.selector;
        assertEq(abi.encodePacked(transferSelector), abi.encodePacked(hex'a9059cbb'));

        string memory transferSignature = "transfer(address,uint256)";
        assertEq(abi.encodePacked(bytes4(keccak256(bytes(transferSignature)))), abi.encodePacked(hex'a9059cbb'));

        bytes4 moddedSelector = moddedToken._____$_$__$___$$$___$$___$__$$.selector;
        assertEq(abi.encodePacked(moddedSelector), abi.encodePacked(hex'a9059cbb'));

        assertEq(abi.encodePacked(transferSelector), abi.encodePacked(moddedSelector));
    }

    function testBalanceOfSelector() public {
        bytes4 balanceOfSelector = token.balanceOf.selector;
        assertEq(abi.encodePacked(balanceOfSelector), abi.encodePacked(hex'70a08231'));

        string memory balanceOfSignature = "balanceOf(address)";
        assertEq(abi.encodePacked(bytes4(keccak256(bytes(balanceOfSignature)))), abi.encodePacked(hex'70a08231'));
    
        bytes4 moddedSelector = moddedToken.$_$$$_$$$$$_$_$____$$$$_$$_$__.selector;
        assertEq(abi.encodePacked(moddedSelector), abi.encodePacked(hex'70a08231'));

        assertEq(abi.encodePacked(balanceOfSelector), abi.encodePacked(moddedSelector));
    
    
    }

    function testAllowanceSelector() public {
        bytes4 allowanceSelector = token.allowance.selector;
        assertEq(abi.encodePacked(allowanceSelector), abi.encodePacked(hex'dd62ed3e'));

        string memory allowanceSignature = "allowance(address,address)";
        assertEq(abi.encodePacked(bytes4(keccak256(bytes(allowanceSignature)))), abi.encodePacked(hex'dd62ed3e'));
    
        bytes4 moddedSelector = moddedToken.$_$_$$$$______$$$____$___$$_$_$$.selector;
        assertEq(abi.encodePacked(moddedSelector), abi.encodePacked(hex'dd62ed3e'));

        assertEq(abi.encodePacked(allowanceSelector), abi.encodePacked(moddedSelector));
    
    }

    function testTransferFromSelector() public {
        bytes4 transferFromSelector = token.transferFrom.selector;
        assertEq(abi.encodePacked(transferFromSelector), abi.encodePacked(hex'23b872dd'));

        string memory transferFromSignature = "transferFrom(address,address,uint256)";
        assertEq(abi.encodePacked(bytes4(keccak256(bytes(transferFromSignature)))), abi.encodePacked(hex'23b872dd'));

        bytes4 moddedSelector = moddedToken.__$_$__$$$$$__$$_$$$_$$__$$___$$.selector;
        assertEq(abi.encodePacked(moddedSelector), abi.encodePacked(hex'23b872dd'));

        assertEq(abi.encodePacked(transferFromSelector), abi.encodePacked(moddedSelector));
    }

    function testDOMAIN_SEPARATORSelector() public {
        bytes4 DOMAIN_SEPARATORSelector = token.DOMAIN_SEPARATOR.selector;
        assertEq(abi.encodePacked(DOMAIN_SEPARATORSelector), abi.encodePacked(hex'3644e515'));

        string memory DOMAIN_SEPARATORSignature = "DOMAIN_SEPARATOR()";
        assertEq(abi.encodePacked(bytes4(keccak256(bytes(DOMAIN_SEPARATORSignature)))), abi.encodePacked(hex'3644e515'));
    
        //____$$$_$$$__$________$$$$____$
    
        bytes4 moddedSelector = moddedToken.____$$$_$$$__$________$$$$____$.selector;
        assertEq(abi.encodePacked(moddedSelector), abi.encodePacked(hex'3644e515'));

        assertEq(abi.encodePacked(DOMAIN_SEPARATORSelector), abi.encodePacked(moddedSelector));

    }




    function testNoncesSelector() public {
        bytes4 noncesSelector = token.nonces.selector;
        assertEq(abi.encodePacked(noncesSelector), abi.encodePacked(hex'7ecebe00'));

        string memory noncesSignature = "nonces(address)";
        assertEq(abi.encodePacked(bytes4(keccak256(bytes(noncesSignature)))), abi.encodePacked(hex'7ecebe00'));

        //_$_$$_$__$$$$$$$$__$__$$_$$$_$$$

        bytes4 moddedSelector = moddedToken._$_$$_$__$$$$$$$$__$__$$_$$$_$$$.selector;
        assertEq(abi.encodePacked(moddedSelector), abi.encodePacked(hex'7ecebe00'));

        assertEq(abi.encodePacked(noncesSelector), abi.encodePacked(moddedSelector));
    }
    // for vanity we want to name the contract using the same bytes4 collision method as for functions
    function testERC20Bytes() public {
        string memory ERC20Signature = "ERC20";
        assertEq(abi.encodePacked(bytes4(keccak256(bytes(ERC20Signature)))), abi.encodePacked(hex'8ae85d84'));

        string memory testVal = "$$$$$$____$_$_$$__$$$____$____$$";

        assertEq(abi.encodePacked(bytes4(keccak256(bytes(testVal)))), abi.encodePacked(hex'8ae85d84'));

    }

        //mining - selectorFinder

    function testPermitSelector() public {
        bytes4 permitSelector = token.permit.selector;
        assertEq(abi.encodePacked(permitSelector), abi.encodePacked(hex'd505accf'));

        string memory permitSignature = "permit(address,address,uint256,uint256,uint8,bytes32,bytes32)";
        assertEq(abi.encodePacked(bytes4(keccak256(bytes(permitSignature)))), abi.encodePacked(hex'd505accf'));
    
        //$____$$_$$___$$$_$$$$__$$$__$$$$$$$$$
        bytes4 moddedSelector = moddedToken.$____$$_$$___$$$_$$$$__$$$__$$$$$$$$$.selector;
        assertEq(abi.encodePacked(moddedSelector), abi.encodePacked(hex'd505accf'));

        assertEq(abi.encodePacked(permitSelector), abi.encodePacked(moddedSelector));
    }


}
