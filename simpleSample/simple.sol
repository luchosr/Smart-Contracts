pragma solidity ^0.4.4;

contract storeSomeData {
    // the current state of the contract is represented
    //for the value of all it's data members in a give time

    uint storedData;

    // allows to set a value
    funtion set(uint i){
        storedData = i;
    }
}