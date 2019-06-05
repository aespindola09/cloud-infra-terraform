# Gestión de infraestructura Google Cloud con Terraform
## Requisitos:

### Paso1: Crear proyecto en [Google Cloud Console.](https://cloud.google.com)

### Paso2: Creación clave de cuenta de servicio que se necesitará para que Terraform administre los recursos.
![GCP](/images/gcpserviceaccount.png)

### Paso3: Instale Terraform desde los binarios de instalación.

### Paso4: Descarga y configuración de Google Cloud SDK
Ahora que tenemos Terraform instalado, debemos configurar la utilidad de línea de comandos para interactuar con nuestros servicios en Google Cloud Platform. Esto nos permitirá autenticarnos en nuestra cuenta en Google Cloud Platform y, posteriormente, utilizar Terraform para administrar la infraestructura.

Descargue e instale el SDK de Google Cloud:

$ curl https://sdk.cloud.google.com | bash
Inicialice el entorno gcloud:

$ gcloud init

Podrá conectar su cuenta de Google con el entorno gcloud siguiendo las instrucciones en pantalla de su navegador. Si estás atascado, trata de revisar la documentación oficial .


### Paso5: Cree una de las infraestructura de los Directorios con Terraform.
