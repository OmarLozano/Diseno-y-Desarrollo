   # AHORRO COOPERATIVO

Esta Dapp ha sido desarrollada con el enfoque de un sistema cooperativo de ahorro, tambin conocido como cadena de ahorro.

## Funcionamiento del modelo de cadena de ahorro

1- Se establece un valor de ahorro mensual, y un periodo de tiempo para el mismo. En este caso se ha definido por defecto
un periodo de 6 meses o 6 pagos y un valor del Depósito en el ahorro de 50 Tokens.

2- Se debe asignar a cada uno de los participantes un mes en el que podrá reclamar su ahorro total. En este caso se ha definido
que el período en el que recogera será de acuerdo al orden de registro, es decir, el primer usuario en registrarse, recibirá
la totalidad de su ahorro(300 tokens) el primer periodo, el segundo en el segundo periodo.

3-Depositos mensuales de forma puntual. El éxito de este sistema radica en que los participantes cumplan con sus depositos en el tiempo establecido, dado que cada mes se recogerá el ahorro de cada participante.

## Posibles problemas.

Debido a que es un sistema en el que los participantes pueden acceder a la totalidad de sus ahorro antes de que terminen
de realizar la totalidad de los depósitos (a menos que seas el usuario que se ha registrado al último), es posible que 
existan usarios que actuén de forma malintencionada recibiendo el dinero y dejando realizar lo depósitos, o realizandolos fuera
del tiempo establecido. Por este motivo se ha incluido para cada usuario una score de puntualidad de 100 inicialmente, el cual
disminuirá en 16 cada vez que no se realiza o se realice tarde un pago.

## Para Futuro:

Continuando con la línea planteada inicialmente en el apartado posibles problemas, el sistema de scoring s podría utilizar para
que en una futura estructura de Ahorro Cooperativo se evalúe su scoring de cumplimiento y de esta forma a los más impuntuales,
asignarle una fecha de entrega más tardía. De esta forma se intentaría arantizar que al reclamar su ahorro, este usuario ya
lo haya depositado.


# Con respecto a la DAAP

Funciona con tokens de tipo ERC-20 
Los tokens se llaman TAC (Token de Ahorro Comunitario)
La totalidad de lo tokens se alojarán en el cuenta comunitaria

## Para el funcionamiento de la DAAP se deben tener en cuenta diferentes pasos.

1.Inicializar el contrato: Para inicializar el contrato se debe trasladar la totalidad de tokens inicial  al contrato "Token".
2. Se deben dar de alta los 6 usuarios, para que las fechas del contrato sean asignada. Una vez se registra el sexto usuario, se emite el tiempo de incio del contrato, y se establecen la fechas reales de pago de los depositos y la fecha del retiro.
3. Cada usuario al acceder podrá consultar su balance, sus fechas de pago, comprar tokens, realizar depósitos y retirar el ahorro, siempre y cuando lo realice en la fecha que le ha sido asignada.



# Comentarios Respecto a la seguridad

Dado que en la aplicación se realizan un conjunto de transacciones, se realizan diferentes requires para verificar que las transacciones pueden ser llevadas a cabo.


## Inicialización del contrato
La inicialización del contrato, solo puede ser realizada por el Owner del mismo, a través del botón incializar transacción.
La inicialización además tiene por defecto implementado que el Owner debe trasladar la totalidad de tokens al contrato, de tal forma que el Owner no se vea beneficiado al poder almacenar un % de los mismos.

Esto se logra a través del uso en modo herencia del contrato Owned, permitiendo restringir el uso de esta función solo para el owner

## Registro de Usuarios: 
En el registro de los usuario se garantiza que un address solo puede tener un usuario dado de alta, para evitar que se puedan dar de alta, múltiples y que actuén de forma deshonesta.


## Balances

**Depositos:**

En primer lugar se verifica siempre si el saldo de la cuenta desde la que se quieres realizar el deposito es mayor al del valor que se quiere depositar

**Retiros:**

Se verifica si el saldo de la cuenta desde la que se quiere obtener el retiro cuenta con una cantidad de tokens >= a la que se quiere retirar.

De igual forma de lleva un la trazabilidad de si el usuario ha realizado el retiro, impidiendo que pueda retirar dos veces. Es importante aclarar que lo retiros no conllevan ningún precio para el usuario más allá del precio de la transacción.

**Compras:**

Se verifica si el saldo de la cuenta desde la que se quiere obtener el retiro cuenta con una cantidad de tokens >= a la que se quiere retirar.

De igual forma con respecto al valance se verifica que el usuario que quiere realizar la compra de tokens, cuente con la cantidad necesaria de tokens.

## Cantidades ingresadas

**Depositos:**

Se han restringido los campos del front para que no solo se puedan depositak 50 tokens cada vez

**Retiros:**

Se han restringido los campos del front para que no solo se puedan retirar 300 tokens cada vez

**Compras:**

Se han restringido los campos del front para que no se puedan realizar compras <1 Token TAC.

## Panic Button/Circuit Breaker

Para la activación Panic button se implemento la herencia del contrato Owned garntizando que solo el Owner puede activar o desactivar el mismo, y mostrando el estado del mismo para todos los usuarios.



#Testing

**1
Se incializa el contrato CompraToken con los valores correctos y se verifica las address de Token y CompraToken**
Se verifica que los valores en el contrato CompraToken se incializa de acuerdo a los valores establecidos en el migrate y en las condiciones indicadas. De igual manera se verifica si las address de los contratos CompraToken.sol y Token.sol son correctas 

**2
Al crear el usuario se devuelven los datos correctos**
Este testing se Realiza para verificar que los datos que se están ingresando en el contrato, a través del front se están registrando de forma apropiada. es importante que los datos mantenga su integridad y por ello se realiza este testing.

**3
Revisión de la compra y Depostito de Tokens**
En este testing se verifica el comportamiento de las funciones de transferencia para la compra y deposito de tokens. Se verifica que se acualicen debidamente los valores de los balances y además en el caso de la compra que le precio indicado en la compra sea la correcta. Se verifican los eventos que se generan en cada una de estas operaciones. La verificación se realiza tanto para los contratos CompraToken.sol como Token.sol

**4
solo permite la creación de máximo 6 usuarios para el ahorro**
Se verifica que solo permita el alta de 6 usuarios

**5
solo permite la creación de un usuario por Address**
Se verifica que para cada address solo se puede dar de alta un usuario

**6
solo permite el owner pueda realizar la transferencia incial al contracto**
Se verifica que el proceso de transferencia inicial se haga de forma adecuada, es decir, que un usuario diferente al Owner no lo pueda hacer

**7
solo permite el owner pueda realizar detener el contracto**
Se verifica que ningún otro address pueda detener el contrato

**8
solo permite el owner pueda realizar detener el contracto**
Se verifica que ningún otro address pueda activar el contrato
       

Me he ayudado a través del proyecto de Daap university reflejado en el siguiente repositorio
https://github.com/dappuniversity/token_sale
