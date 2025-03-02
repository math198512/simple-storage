// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract SimpleStorage {

    uint256 myFavoriteNumber;

    struct Person{
        uint256 favoriteNumber;
        string name;
    }
    
    Person public arik = Person({favoriteNumber: 12, name: "Tarik"});

    function store(uint256 _favoriteNumber) public {
        myFavoriteNumber = _favoriteNumber;
    }

    function retrieve() public view returns(uint256){
        return myFavoriteNumber;
    }
}