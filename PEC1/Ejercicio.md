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



2. Para obtener el Address, se ha utilizado el comando: eth.getBlock("earliest")




3. Para obtener la información acerca de los peers cercanos se puede usar el comando
$admin.peers

Y para obtener el número de nodos conectados usamos el sguiente comando en la consola
$admin.peers.length


4.Para obtener la altura máxima del bloque entre los peers, se realiza a través del siguiente comando en consola

$eth.syncing


