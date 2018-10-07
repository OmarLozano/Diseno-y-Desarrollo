
Obtenga un contrato inteligente que haya utilizado anteriormente o desarrolle uno tan
simple como pueda.
A partir del compilador de Solidity y habilitando siempre la optimización. Obtenga:
- Códigos de operación del contrato inteligente.
- Identificadores de las funciones que existan dentro del contrato inteligente.
- Estimación del gas utilizado por cada función



A partir del siguiente código y haciendo uso del compilador web Remix 


pragma solidity ^0.4.11;
contract multiplica{
    uint256 T;
    uint256 P;
    uint256 R;
    constructor () public {
        T = 10;
        P = 5;
    }
    
    function producto() public{
        R = T*P;
    }
    
    function multiplicacion() public{
        R = R*2;
    }
}

1. Se pueden indicar como los comando de operación:

"opcodes": "PUSH1 0x80 PUSH1 0x40 MSTORE CALLVALUE DUP1 ISZERO PUSH1 0xF JUMPI PUSH1 0x0 
DUP1 REVERT JUMPDEST POP PUSH1 0x32 PUSH1 0x0 SSTORE PUSH1 0x9A DUP1 PUSH2 0x23 PUSH1 0x0 
CODECOPY PUSH1 0x0 RETURN STOP PUSH1 0x80 PUSH1 0x40 MSTORE PUSH1 0x4 CALLDATASIZE LT PUSH1
0x3E JUMPI PUSH4 0xFFFFFFFF PUSH29 0x100000000000000000000000000000000000000000000000000000000 
PUSH1 0x0 CALLDATALOAD DIV AND PUSH4 0x2BC80F3A DUP2 EQ PUSH1 0x43 JUMPI JUMPDEST PUSH1 0x0 DUP1
REVERT JUMPDEST CALLVALUE DUP1 ISZERO PUSH1 0x4E JUMPI PUSH1 0x0 DUP1 REVERT JUMPDEST POP PUSH1 0x55 
PUSH1 0x68 JUMP JUMPDEST PUSH1 0x40 DUP1 MLOAD SWAP2 DUP3 MSTORE MLOAD PUSH1 0x20 SWAP1 SWAP2 ADD DUP2 
SWAP1 SUB SWAP1 RETURN JUMPDEST PUSH1 0x0 SLOAD DUP2 JUMP STOP LOG1 PUSH6 0x627A7A723058 KECCAK256 SELFDESTRUCT 
JUMPDEST CALLDATASIZE CALLDATACOPY PUSH6 0x44200B728FC9 0x49 0xd1 0xe0 SSTORE PUSH16 0xECF9B4E4D67F3A5BBDA1BF8A4C124CBE 
STOP 0x29 ",
![alt text](https://github.com/OmarLozano/Diseno-y-Desarrollo/blob/master/PEC1/3_codigos%20de%20operaci%C3%B3n.png "Comandos de operación")

2. Los identificadores de función son:
![alt text](https://github.com/OmarLozano/Diseno-y-Desarrollo/blob/master/PEC1/3_identificadores%20de%20funciones.png "Identificadores Hash de las funciones")

3. La estimación de gasto de gas de cada función es:

![alt text](https://github.com/OmarLozano/Diseno-y-Desarrollo/blob/master/PEC1/3_estimacion%20de%20gas%20por%20funcion.png "Consumo de Gas por función")


