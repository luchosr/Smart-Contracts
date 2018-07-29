# Introduccion a Contratos Inteligentes con Solidity.






## Unidad 1:

### **A) Contratos, aspectos fundamentales.**


* El código de ```Solidity``` está encapsulado en **contratos**, que vendrían a ser el bloque de construccion más basica de las aplicaciones de Ethereum.

* Todas las variables y funciones pertenecen al menos a un contrato, que será el punto de partida del proyecto.

* Un contrato vacio llamado HolaMundo se parecería a esto:

    ```contract HolaMundo{```

    ```}```


* Todos los proyectos en solidity tienen en su codigo la declaracion de la version del compilador  que usan para interpretar el contrato.

            pragma solidity ^0.4.19   

            contract HolaMundo{}

### **B) Variables de estado y números enteros.**


* Las `variables de estado` se guardan permanentemente en el almacenamiento del contrato (se escriben en la cadena de bloques de Etehreum).

            contract Example {
            uint myUnsignedInteger = 100;
             }

* El tipo de dato `uint` es un **entero sin signo**  (nunca puede ser negativo). Existe el tipo de dato `int` para enteros con signo.

> Nota: En Solidity, `uint` es realmente un alias para `uint256`, un número entero de 256-bits. Puedes declarar `uints` con menos bits — `uint8`, `uint16`, `uint32`, etc.. Pero por lo general usaremos `uint` excepto en casos específicos.


### **C) Operaciones Matemáticas.**


* En `Solidity` las operaciones matemáticas son iguales que en el resto de los lenguajes a excepción de las operaciones exponenciales que se notan de  la siguiente manera:

            uint x = 5 ** 2 (esto sería 5^2, que da 25.)