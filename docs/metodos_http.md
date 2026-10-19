# METODOS HTTP

## 1. GET
- Este metodo se utiliza para solicitar y recuperar datos de un serividos sin modificar su estado.
- Para su utilizacion, se envia una peticion indicando la url del recurso que se desea consultar y puede incluir parametros de busqueda.
- Ejemplo (Thunder Client):
URL en Thunder Client: https://jsonplaceholder.typicode.com/posts/1
Status: 200 OK

## 2. POST
- El metodo permite enviar datos al servidor para crear un nuevo recurso.
- Se usa enviando la informacion estructurada en el body de la peticion en formato JSON.    
- Ejemplo (Thunder Client):
URL en Thunder Client: https://jsonplaceholder.typicode.com/posts
Body: 
{
    "title": "Ejemplo usando post",
    "body": "Probando peticion POST para la practica",
    "userId": 1
}
Status: 201 Created

## 3. PUT
- Sirve para actualizar o reemplazar completamente un recurso existente en el servidor. Es una operación idempotente.
- Para su uso, se especifica el identificador del recurso en la URL y se envía en el cuerpo la representación íntegra y completa del objeto.
- Ejemplo (Thunder Client):
URL en Thunder Client: https://jsonplaceholder.typicode.com/posts/1
Body: 
{
    "id": 1,
    "title": "Titulo modificado",
    "body": "Cuerpo modificado,
    "userId": 1
}
Status: 200 OK

## 4. PATCH 
- Sirve para aplicar modificaciones parciales sobre un recurso.
- Se usa incluyendo en el body unicamente los campos especificos que se desean actualizar.
- Ejemplo (Thunder Client):
URL en Thunder Client: https://jsonplaceholder.typicode.com/posts/1
Body: 
{
    "title": "Unicamente el titulo modificado"
}
Status: 200 OK

## 5. DELETE
- Sirve para la eliminacion permanente de un recurso en especifico del servidor.
- Se usa identificando el recurso en la url y efecutando el metodo.
- Ejemplo (Thunder Client):
URL en Thunder Client: https://jsonplaceholder.typicode.com/posts/1
Status: 200 OK

