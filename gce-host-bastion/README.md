##Descripción general
###Limitar el acceso a los recursos es una práctica recomendada para la administración de la infraestructura.
![GCP](/images/bastionhost.png)


Durante las operaciones, endurezca el servidor mediante la eliminación de su dirección IP externa, lo que impedirá las 
conexiones desde Internet. Durante el mantenimiento, inicie un Host de bastión que tenga una dirección IP externa. Luego 
conéctese a través de SSH al Host de bastión y desde allí al servidor por medio de la dirección IP interna. Puede restringir el 
acceso aún más con reglas de firewall.

