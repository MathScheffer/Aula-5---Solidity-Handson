// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";

import {Flipper} from "../src/Flipper.sol";

contract FlipperTest is Test {
    Flipper public flipper;

    function setUp() public {
        flipper = new Flipper();
    }

    function test_getValue() public {
        assertEq(flipper.getValue(), true);
    }

    function test_flip() public {
        flipper.flip();
        assertEq(flipper.getValue(), false);
    }
}