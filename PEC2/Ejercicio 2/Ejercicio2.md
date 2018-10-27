A partir de un truffle project como puede ser la pet-shop utilizada en módulos anteriores.
Haga una pequeña modificación en su frontend para mostrar su nombre al ejecutar la
aplicación. (Puede editar cualquier parámetro adicional, siempre y cuando el nombre sea
visible).
Suba el truffle project a GitHub. (No incluya la carpeta node_modules).
Arranque un daemon de IPFS y aloje la DApp (Proyecto truffle pet-shop). Debe ser capaz
de utilizar la aplicación al igual que en localhost (por ejemplo: con MetaMask).
Describa todo el procedimiento adjuntando las instrucciones utilizadas y sus outputs, y
adjunte el hash de IPFS. Se recomienda realizar la carga (o recarga si ya ha realizado la
carga en IPFS) en una fecha cercana a la entrega. Esto es debido a que si realiza la carga
en una fecha temprana, puede que el contenido tarde o no llegue incluso a cargar.


Para esta pec se ha utilizado una truffle project para realizar votaciones a dos candidatos y registrar dichos votos.

1. Para comenzar la subida a IPFS, debemos primero instalar IPFS, para ello:

    1. Descargamos el paquete de IPFS para nuestro sistemas operativo
    2. Ejecutamos desde consola las instalación install.sh
    
    
    ![alt text](https://github.com/OmarLozano/Diseno-y-Desarrollo/blob/master/PEC2/Ejercicio%202/PEC2_2_instalaci%C3%B3n%20IPFS.png)
    
2. Inicializamos IPFS

![alt text](https://github.com/OmarLozano/Diseno-y-Desarrollo/blob/master/PEC2/Ejercicio%202/PEC2_2%20inicializando%20IPFS.png)
    
3. Ejecutamos en una consola paralela el Daemon de IPFS (no debemos cerrar el Daemon)
![alt text](https://github.com/OmarLozano/Diseno-y-Desarrollo/blob/master/PEC2/Ejercicio%202/PEC2_2_Ejecutando_daemon_IPFS.png)

4. Verificamos que nuestro nodo este conectado con otros de IPFS
![alt text](https://github.com/OmarLozano/Diseno-y-Desarrollo/blob/master/PEC2/Ejercicio%202/PEC2_2_Verificando_nodos_IPFSswarm.png)

5. Como un paso previo a la subida del proyecto, creamos un fichero "Dist" en el cual se han incluido todos los elementos indispensables para el funcionamiento de la Dapp. Se han incluído los archivos para el Front, todo el fichero src, y además es fundamental agregar los contratos alojados en el fichero Build (Election.json y Migrations.json).

  -Realizamos la subida del fichero a IPFS
  
  ![alt text](https://github.com/OmarLozano/Diseno-y-Desarrollo/blob/master/PEC2/Ejercicio%202/PEC2_2_Subiendo_fichero_IPFS.png)
  
  6.De la lista que nos genera al subir el fichero, tomamos la ultima dirección y la publicamos en IPFS, para que nos devuelva en enlace de consulta
  
  ![alt text](https://github.com/OmarLozano/Diseno-y-Desarrollo/blob/master/PEC2/Ejercicio%202/PEC2_2_GenerandoURL_IPFS.png)
  
  7. Procedemos a consultar el repositorio en IPFS y a verificar el 
60
 ![alt text](https://github.com/OmarLozano/Diseno-y- Desarrollo/blob/master/PEC2/Ejercicio%202/PEC2_2Voto_registrado_candidato2.png)funcionamiento de nuestra Daap.
  
 ![alt text](https://github.com/OmarLozano/Diseno-y-Desarrollo/blob/master/PEC2/Ejercicio%202/PEC2_2_Daap_IPFS.png)
 
 
 
 Verificamos que la Daap nos permita generar validar transacciones a través de Metamask
 
 
  ![alt text](https://github.com/OmarLozano/Diseno-y-Desarrollo/blob/master/PEC2/Ejercicio%202/PEC2_2_Metamask__funcionando.png)
 
 
 Se actualiza el estado de las votaciones al validar la transacción con Metamask
 
 ![alt text](https://github.com/OmarLozano/Diseno-y-Desarrollo/blob/master/PEC2/Ejercicio%202/PEC2_2Voto_registrado_candidato2.png)
 
 
  
  
  
  

