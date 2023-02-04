// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/Counter.sol";

contract CounterTest is Test {
    Counter public counter;

    function setUp() public {
    counter = new Counter(10);
        
    }
    function testGetCount() public {
        uint value = counter.getCount();
        assertEq(value, 10);
        emit log_named_uint("The Value is: ", value);
    }
    function testIncrement() public {
        counter.increment();
        uint value = counter.number();
        assertEq(counter.number(), 11);
        emit  log_named_uint("The Value After increment is: ", value);
    }
    function testDecrement() public {
        counter.decrement();
        uint value = counter.number();
        assertEq(counter.number(), 9);
        emit log_named_uint("The Value After Decrement is : ", value);
    }
    function testSetNumber() public {

        counter.setNumber(20);
        uint value = counter.number();
        assertEq(counter.number(), value);
        emit log_named_uint("The value after setting is:", value);
    }
}
