// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.4.22 <0.8.0;

contract EtherWallet {
    address payable public owner;
    uint256 minimumUSD = 50 * 10**18;
    
    constructor() public {

     owner = msg.sender;
    
    }
    function deposit() public payable {}

    event received(address caller, uint amount, string message);
    function receive(uint _amount) payable external{
        require(msg.sender == owner, "caller is not owner");
       emit received(msg.sender,_amount,"send");
    }
    function  withdraw(uint _amount) payable external {

    require(msg.sender == owner, "caller is not owner");

    msg.sender.transfer(_amount);

    }
    function getBalance() external view returns (uint) {

    return address(this).balance;

    }
}