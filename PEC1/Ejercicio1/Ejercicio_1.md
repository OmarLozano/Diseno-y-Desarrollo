Construya y configure su propia blockchain a partir de un archivo génesis que usted
mismo debe definir. Se recomienda el uso del cliente Geth.
Cree una cuenta mediante el cliente Geth y consiga su propio Ether a partir de la minería.
Si realiza instrucciones adicionales dentro del cliente, se valorará positivamente.
Entrega: Archivo génesis y pantallazo del cliente Geth al inicio de la sincronización donde
se puedan observar todos los parámetros del nodo. Además debe presentar un
pantallazo del balance de la cuenta creada. Hacer referencia a estos pantallazos en un
archivo .md referente al ejercicio 1.

Para el desarrollo del ejercicio se ejecutaron los siguientes comandos para almacenar la el archivo génesis (.json) en una carpeta,
y luego ejecutar la cadena a partir de dicho acrhivo.

1. "Creando Archivo Génesis"

mkdir chaindata //crear el directorio
nano genesis_omar,json //editar el carhivo

El archivo genésis_omar,json, se  configuró ingresando los sisguientes valores:

{
"config": {
"chainId": 720, 
"homesteadBlock": 0,
"eip155Block": 0,
"eip158Block": 0
},
"difficulty": "20",
"gasLimit": "2100000",
"alloc": {
"7df9a875a174b3bc565e6424a0050ebc1b2d1d82": 
    { "balance": "100000" },
"f41c74c9ae680c1aa78f42e5647a62f353b7bdde": 
    { "balance": "150000" }
}
}

2.Creación de la cuenta nueva en geth:
![Alt text]( https://github.com/OmarLozano/Diseno-y-Desarrollo/blob/master/PEC1/Ejercicio1/1_Creaci%C3%B3n%20cuenta%20nueva%20en%20geth.png
"Optional Title")
3.Inicializando Blockchain a partir de archivo génesis_omar.json:
 ![alt text](https://github.com/OmarLozano/Diseno-y-Desarrollo/blob/master/PEC1/Iniciando%20Blockchain.png "Inicializando Blockchain")

4.Ingresamos a la consola:
![alt text](https://github.com/OmarLozano/Diseno-y-Desarrollo/blob/master/PEC1/Ingresando%20a%20la%20consola.png "Ingresando a la consola")
 
4.Desde la consola verificamos el saldo de nuestra cuenta nueva y le indicamos que será la cuenta que reciba las recompensas de minado:

![alt text](https://github.com/OmarLozano/Diseno-y-Desarrollo/blob/master/PEC1/Asignando%20recompensa%20a%20nueva%20cuenta.png "Asignando recompensa a cuenta nueva")

5.Iniciamos el minado y verificamos el saldo de nuestra nueva cuenta:

![alt text](https://github.com/OmarLozano/Diseno-y-Desarrollo/blob/master/PEC1/Comienzo%20de%20minado%20NC.png "Comienzo del Minado")
![alt text](https://github.com/OmarLozano/Diseno-y-Desarrollo/blob/master/PEC1/Balance%20CN%20depu%C3%A9s%20de%20minado.png "Verificación del saldo en la nueva cuenta después del minado")
