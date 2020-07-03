// SPDX-License-Identifier: MIT

pragma solidity >=0.4.21 <0.7.0;

contract Adoption {
    address[16] public adopters;

    //Adopting a pet
    function adpot(uint256 petid) public returns (uint256) {
        require(petid >= 0 && petid <= 15, "Invalid id ");
        adopters[petid] = msg.sender;
        //Msgsender the address of the person or smart contract who called the function
        return petid;
    }

    //Retrieving the adopters
    function getAdopters() public view returns (address[16] memory) {
        return adopters;
    }
}
