pragma solidity ^0.4.0;

contract helloWorld {

    

    string  word = "Hello Fucked World";
    address public issuer;

    function helloWorld() public{
        issuer = msg.sender;
    } 

    function getWord() public constant returns(string){
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

// si usamos public para word, obtenemos la variable
// porque la hacemos pública.

// Los botones azules son botones Getters,
//que vas a ver en el compilador Remix.
// Los Steer estan en Rojo, y te permiten
// cambiar la info, editarla.


//Cada vez que usamos un getter no hay necesidad 
//de minar un bloque, no asi con los Setter que se 
// ven una vez minados en la blockchain


// En los errores de "No visibility specified explicitly for function"
// acordate de poer en publico la visibilidad.