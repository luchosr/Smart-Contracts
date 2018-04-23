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


// Los botones azules son botones Getters,
//que vas a ver en el compilador Remix.
// Los Setter estan en Rojo, y te permiten
// cambiar la info, editarla.


//Cada vez que usamos un getter no hay necesidad 
//de minar un bloque, no asi con los Setter que se 
// ven una vez minados en la blockchain


// En los errores de "No visibility specified explicitly for function"
// acordate de poer en publico la visibilidad.