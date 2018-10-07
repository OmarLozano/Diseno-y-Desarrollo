Inicie la sincronización de la red Rinkeby en su dispositivo (se recomienda ésta frente a
Ropsten debido al tamaño de la misma y la velocidad de sincronización).
Para la realización de este ejercicio no necesita una sincronización completa del nodo.
- Obtenga el address correspondiente al bloque génesis la red Rinkeby mediante el
cliente Geth y demuestre cómo lo ha obtenido. No use la función getBlock(0).
- Obtenga sólo la cantidad de peers a los que está conectado.
- Obtenga información acerca de los peers a los que está conectado e indique la
altura máxima de bloque de los peers.
1. Inicialización de la cadena Rinkeby.
Se puede iniciar de tres formas: Light, fast y completa, para este caso nos hemos conectado como nodos ligeros.

![Alt text](https://github.com/OmarLozano/Diseno-y-Desarrollo/blob/master/PEC1/sincronizaci%C3%B3n%20como%20nodo%20light.png" Iniciando nodo light")


2. Para obtener el Address, se ha utilizado el comando: eth.getBlock("earliest")

![Alt text](https://github.com/OmarLozano/Diseno-y-Desarrollo/blob/master/PEC1/Addres%20bloque%20genesis.png" Address bloque origen - 1")


![Alt text](https://github.com/OmarLozano/Diseno-y-Desarrollo/blob/master/PEC1/Address%20bloque%20genesis%202.png" Address bloque origen - 2")

3. Para obtener la información acerca de los peers cercanos se puede usar el comando
$admin.peers
![Alt text](https://github.com/OmarLozano/Diseno-y-Desarrollo/blob/master/PEC1/info%20nodos.png" Información nodos")

Y para obtener el número de nodos conectados usamos el sguiente comando en la consola

$admin.peers.length
![Alt text](https://github.com/OmarLozano/Diseno-y-Desarrollo/blob/master/PEC1/info%20numero%20de%20nodos.png "Iniciando nodo light")

4.Para obtener la altura máxima del bloque entre los peers, se realiza a través del siguiente comando en consola

$eth.syncing

![Alt text](https://github.com/OmarLozano/Diseno-y-Desarrollo/blob/master/PEC1/altura%20del%20bloque%20m%C3%A1s%20alto.png" Altura bloque más alto")
