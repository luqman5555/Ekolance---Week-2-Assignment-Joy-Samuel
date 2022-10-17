//SPDX-License-Identifier:MIT
pragma solidity ^0.8.0;

contract Etherwallet{

/*Assignment - Upgrade the ether wallet smart contract to allow individual withdraw the amount
of Ethereum they deposited into the smart contract */


    address payable public owner;

    constructor() {
        owner = payable(msg.sender);
    }

    function deposit() public payable{
        
    }

    function withdrawEther(uint _amount) public {
        payable(msg.sender).transfer(_amount);

    }

    function getbalance() public view returns(uint){
    return address(this).balance;

}
}