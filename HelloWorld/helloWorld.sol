pragma solidity ^0.4.0;

contract helloWorld {

    

    string  word = "Hello Fucked World";

    address public issuer;
    // using "public" for a variable, is directly making  getter function on it.

    function helloWorld() public{
        issuer = msg.sender;
    } 

    function getWord() public constant returns(string){
        // In a getter function, there is no need to mine a Block.
        //In a setter case, you have to mine a Block because you are changing the contract's Data.

        return word;
    }
    function setWord(string newWord) public  returns(string) {
    //     //..
        if(issuer != msg.sender){
            return "This is not the creator";
        }
        else {
            word = newWord;
            return "Hello, Creator";
        }
        word = newWord;
        return word;
    }

    
}

