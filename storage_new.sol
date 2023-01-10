// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.4.22 <0.8.0;


contract Storage {

    uint256 number;
    function put(uint256 num) public {
        number = num;
    }

   
    function get() public view returns (uint256){
        return number;
    }
}