# Repositorio de Ejemplo - Integración de GitHub con OpenShift y Quay.io

Este repositorio tiene como objetivo demostrar cómo una acción push en este repositorio puede disparar un webhook que activa un BuildConfig en OpenShift. El BuildConfig se utilizará para construir una imagen de contenedor y depositarla en Quay.io.

## Objetivo

El objetivo principal de este repositorio es ilustrar el flujo de trabajo de integración continua y entrega continua (CI/CD) utilizando las siguientes tecnologías:

- **GitHub:** Este repositorio es alojado en GitHub y se utiliza como el sistema de control de versiones central para nuestro código fuente.

- **OpenShift:** Utilizamos OpenShift para administrar nuestros despliegues y flujos de trabajo de CI/CD. Cuando se produce una acción push en este repositorio, un webhook activa un BuildConfig en OpenShift, lo que desencadena la construcción de una nueva imagen de contenedor.

- **Quay.io:** La imagen de contenedor resultante se almacena en Quay.io, un registro de contenedores confiable y seguro.

## Flujo de Trabajo

# Flujo de Trabajo de Webhooks Triggers en OCP para Construir Imágenes desde GitHub

Este repositorio utiliza webhooks triggers en OpenShift Container Platform (OCP) para automatizar la construcción de una imagen de contenedor a partir de un Dockerfile alojado en un repositorio de GitHub. A continuación se detalla el flujo de trabajo:

## 1. Configuración Inicial:

### a. Creación del BuildConfig (BC):

- En OCP, se crea un BuildConfig que define cómo se debe construir la imagen de contenedor. El BC incluye información sobre el origen del código fuente, las instrucciones de construcción y el registro de contenedores de destino.

### b. Configuración del Webhook Trigger:

- Dentro de la configuración del BC, se establece un webhook trigger que se asocia con un evento específico. En este caso, el evento estará relacionado con cambios en el repositorio de GitHub.

## 2. Configuración en GitHub:

### a. Creación del Repositorio:

- En GitHub, se crea un repositorio que contiene el código fuente de la aplicación, incluyendo el Dockerfile necesario para construir la imagen de contenedor.

### b. Configuración del Webhook en GitHub:

- Se configura un webhook en el repositorio de GitHub para que notifique a la URL del webhook de OCP cada vez que ocurra un evento específico, como un push a una rama determinada o una solicitud de extracción (pull request).

## 3. Disparo de la Construcción:

### a. Ocurrencia de un Evento en GitHub:

- Cuando ocurre un evento definido en el repositorio de GitHub, GitHub envía una solicitud POST al webhook de OCP.

### b. Recepción de la Solicitud por OCP:

- OCP recibe la solicitud del webhook y, en función de la configuración del webhook trigger, activa la construcción del BC asociado.

### c. Construcción de la Imagen desde GitHub:

- OCP recupera el código fuente más reciente del repositorio de GitHub, incluido el Dockerfile.

- Utilizando las instrucciones definidas en el Dockerfile, OCP construye la imagen de contenedor de la aplicación.

## 4. Reposición de la Imagen:

- Una vez que la construcción se completa con éxito, la imagen de contenedor resultante se almacena en el registro de contenedores especificado en el BC. Esto podría ser un registro externo como Quay.io.

## 5. Integración Continua:

- La imagen construida y almacenada está lista para su implementación en entornos de desarrollo, pruebas o producción, según sea necesario.

Este flujo de trabajo automatizado asegura que cada vez que se realice un cambio en el repositorio de GitHub, OCP construirá automáticamente la imagen de contenedor correspondiente, lo que facilita la entrega continua de aplicaciones actualizadas.

Si deseas contribuir a este proyecto o aprender más sobre cómo funciona, consulta la sección "Cómo Contribuir" en este archivo README.

