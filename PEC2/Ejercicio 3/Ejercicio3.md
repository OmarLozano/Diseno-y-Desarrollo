Puede reutilizar parte de lo que ha realizado en el ejercicio 2 (hasta subir el proyecto a
GitHub).
Arranque un nodo de Swarm y aloje la DApp (Proyecto truffle pet-shop).
Además, vincule el ENS adquirido con la DApp de tal forma que una url como la de a
continuación muestre la aplicación. Por ejemplo:
http://localhost:8500/bzz:/swarmtest.test/index.html
Debe ser capaz de utilizar la aplicación al igual que en localhost (por ejemplo: con
MetaMask).
Adjunte el hash (manifest) de Swarm asociado con la aplicación.
Describa todo el procedimiento adjuntando las instrucciones utilizadas y sus outputs.
Adjunte todos los pantallazos que considere relevantes (como puede ser el navegador
mostrando la aplicación o transacciones de MetaMask, entre otros) e indique su address
en la red correspondiente (Rinkeby, Ropsten…).



1. Se realiza el proceso de configuración e instalación de swarm desde consola y siguiendo la documentación oficial de swarm:
https://swarm-guide.readthedocs.io


![alt text](https://github.com/OmarLozano/Diseno-y-Desarrollo/blob/master/PEC2/Ejercicio%203/PEC_2_3_instalando%20swarm1.png)

![alt text](https://github.com/OmarLozano/Diseno-y-Desarrollo/blob/master/PEC2/Ejercicio%203/PEC_2_3instalando_swarm2.png)

![alt text](https://github.com/OmarLozano/Diseno-y-Desarrollo/blob/master/PEC2/Ejercicio%203/PEC_2_3_instalando%20swarm_3.png)

![alt text](https://github.com/OmarLozano/Diseno-y-Desarrollo/blob/master/PEC2/Ejercicio%203/PEC_2_3%20instalando%20swarm_4.png)

![alt text](https://github.com/OmarLozano/Diseno-y-Desarrollo/blob/master/PEC2/Ejercicio%203/PEC_2_3_instalando%20Swarm_5.png)

![alt text](https://github.com/OmarLozano/Diseno-y-Desarrollo/blob/master/PEC2/Ejercicio%203/PEC_2_3_instalando%20swarm_6.png)


Por último para verificar que la instalción ha sido correcta, revisamos la versión de swarm
![alt text](https://github.com/OmarLozano/Diseno-y-Desarrollo/blob/master/PEC2/Ejercicio%203/PEC_2_3_verificando%20la%20version%20swarm.png)


2. Ahora procedemos a conectar nuestro nodo swarm. Para ello necesitamos crear una cuenta a través de geth


![alt text](https://github.com/OmarLozano/Diseno-y-Desarrollo/blob/master/PEC2/Ejercicio%203/PEC_2_3%20creando%20cuenta%20en%20Geth.png)


3. Procedemos a conectarnos con nuestra cuenta de swarm.

![alt text](https://github.com/OmarLozano/Diseno-y-Desarrollo/blob/master/PEC2/Ejercicio%203/PEC_2_3%20conectando%20nodo%20a%20swarm.png)

  Podemos verificar la conexión y ejecución de swarm accediendo a localhost:8500
  
![alt text](https://github.com/OmarLozano/Diseno-y-Desarrollo/blob/master/PEC2/Ejercicio%203/PEC_2_3_ejecutando%20swarm%20en%20localhost.png)


  
  
 4. Realizamos la carga de nuestro directorio Dist, en el cual se encuentran los archivos necesarios para el funcionamiento de nuestra Dapp, los contratos .json y los archivos en la carpeta source. La carga la realizamos indicando el archivo de entrada por default y de forma recursiva nuestro directorio
 
 ![alt text](https://github.com/OmarLozano/Diseno-y-Desarrollo/blob/master/PEC2/Ejercicio%203/PEC_2_3_subiendo%20Daap.png)

![alt text](https://github.com/OmarLozano/Diseno-y-Desarrollo/blob/master/PEC2/Ejercicio%203/PEC_2_3_hash%20de%20la%20Dapp.png)

Por medio del hash que nos arroja por consola podemos verificar en el buscador si nuestra Dapp esta subida en swarm
 
![alt text](https://github.com/OmarLozano/Diseno-y-Desarrollo/blob/master/PEC2/Ejercicio%203/PEC_2_3_Dapp%20en%20swarm.png)

http://localhost:8500/bzz:/b77e287112fe88a7def87b5aa43d4855dd15c709c94fc289d58df3bc56541ae7/



