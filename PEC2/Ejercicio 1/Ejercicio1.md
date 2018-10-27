Ejercicio 1 - ENS
Adquiera un dominio bajo el TLD ‘.test’ en la testnet que desee (Rinkeby o Ropsten).
Si no le es posible sincronizar un nodo, puede desplegar el servicio ENS en la red testrpc
con Geth.
Describa el procedimiento seguido.
Demuestre que es usted poseedor del dominio adquirido y obtenga la dirección del
Resolver utilizado. (Adjunte un pantallazo con las instrucciones y los outputs).
*Tenga en cuenta que la duración de la propiedad de los dominios en testnet tienen una
duración de 28 días



1. En primer lugar debemos conectarnos a la testnet de Rinkeby (para este caso con un nodo de tipo ligero), en la cual crearemos posteriormente nuestro dominio
 
 ![Alt text](https://github.com/OmarLozano/Diseno-y-Desarrollo/blob/master/PEC2/Ejercicio%201/PEC2_1_sincronizaci%C3%B3n%20como%20nodo%20light.png "Sincronizando nodo en modo ligero")
 
 2. Una vez hemos logrado sincronizar nuestro nodo, debemos ingresar a la consola
 
 
 
 3. Haciendo uso de diferentes tutoriales publicados en la red (https://michalzalecki.com/register-test-domain-with-ens/, https://github.com/ensdomains/ens/blob/master/docs/quickstart.rst) procedemos a descargar el archivo ensutils-testnet.js, y a realizar las modificaciones en las direcciones de acuerdo a lo que se indica para la red Rinkeby.
 
 Entrando al paquete en la línea "contract address" (línea 220) se debe cambiar la dirección introduciendo la siguiente: "0xe7410170f87102df0055eb195163a03b7f2bff4a". de igual forma debemos realizar un cambio de dirección en la línea "publicResolver" por la dirección: "0x5d20cf83cb385e06d2f2a892f9322cd4933eacdc".
 
 Una vez hemos realizado los cambios, desde la consola realizamos la carga del fichero ensutils-tesnet.js tal y como se muestra a conitnuación
 
  ![Alt text](https://github.com/OmarLozano/Diseno-y-Desarrollo/blob/master/PEC2/Ejercicio%201/PEC2_1_cargando_ensutils.png "Cargando ensutils-testnet")
  
  4. Ahora podemos verificar si el dominio que queremos crear se encuentra disponible, para ello ingresamos el siguiente comando:
  
  -new Date(testRegistrar.expiryTimes(web3.sha3('Dominio_Omar_Blockchain'))-toNumber() * 1000)
  
  Si el comando nos devuelve una fecha anterior de la actual, quiere decir que no ha sido utilizado est dominio, por locual lo podemo usar.
  
  
  ![Alt text](https://github.com/OmarLozano/Diseno-y-Desarrollo/blob/master/PEC2/Ejercicio%201/PEC2_1Consulta_Disponibilidad_Dominio.png "Cargando ensutils-testnet")
  
  5. Una vez hemos verificado que el domnio se encuentra disponible, debemos proceder a registrar el Dominio, habilitando primero nuestra cuenta creada en la testnet de rinkeby, y en este caso al no tener saldo transmitiendo desde mi cuenta anterior tokens para poder pagar la transacción. Siempre se pueden solicitar tokens desde metamask para poder operar las pruebas.
  
 
  ![Alt text](https://github.com/OmarLozano/Diseno-y-Desarrollo/blob/master/PEC2/Ejercicio%201/PEC2_1_Desbloqueo%20de%20cuenta.png "Desbloqueo de la cuenta"
  
  una vez hemos desbloqueado la cuenta realizamos el registro del nuevo dominio
  
   ![Alt text](https://github.com/OmarLozano/Diseno-y Desarrollo/blob/master/PEC2/Ejercicio%201/PEC2_1_desbloquear%20cuenta_registrat%20_dominio.png "Sincronizando nodo en modo ligero")
   
   6. finalmente a través del public resolver, indicamos que el Domino creado debe ser asignado a nuestra cuenta en rinkeby.
   Se realiza siguiendo 4 pasos
   
    1. Habilitamos nuestra cuenta
    2.Utilizamos el resolutor indicado a través del tutorial de michalzalecki para establecerle una dirección
    3.Modificamos la dirección owner del ENS apuntando a la nuestra
    4 verificamos que coincida.
   
   ![Alt text](https://github.com/OmarLozano/Diseno-y-Desarrollo/blob/master/PEC2/Ejercicio%201/PEC2_1_Asignando_dominio_a_cuenta.png "Sincronizando nodo en modo ligero")
   
   
  
  
  

