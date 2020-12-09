4) Dentro del archivo read_template.php se modifica la linea 38(echo "<td>{$price}</td>";) por lo siguiente(echo "<td>\${$price}</td>";) 
y dentro del archivo read_one.php se modifica la linea 43(echo "<td>{$product->price}</td>";) por lo siguiente (echo "<td>\${$product->price}</td>";)
con la barra se escapan los caracteres especiales y me permite añadir simbolos de dolar sin pensar que es una variable(por comillas dobles)

5) Para guardar la imagen de un producto en la base de datos se recibe el formulario post(enctype="multipart/form-data"), se procesan los datos que trae,
se le añade la imagen a la propiedad del producto $product->image = $image, luego antes de proceder a hacer el insert se debe verificar que exista el
campo image en la base de datos, un tipo de formato varchar con longitud de 512, se verifica el tipo de extensión de la imagen, el tamaño del archivo, si
existe el directorio de destino, si el nombre del archivo ya existe. En la base de datos se guarda un varchar con el path de destino de la imagen. 
La imagen se encuentra en la carpeta uploads\(nombre del archivo). Para recuperarla basta con crear una etiqueta html de image con el src asignado a
la ubicación de la imagen(el campo image de la base de datos).

6) Dentro de product.php en la función update se añadió el campo image a la consulta en la linea 121 (image = :image), se hizo un bind del parametro
en la 139 ($stmt->bindParam(":image", $this->image);), en el update_product.php se añadió el campo image a product en la linea 44, luego en la linea 51 se añadió
el uploadPhoto (echo $product->uploadPhoto();), en la linea 64 se añade el (enctype="multipart/form-data") y posteriormente desde la linea 86 el campo de imagen con la imagen anterior, y un input para añadir ua nueva imagen,
de esta manera se sube la nueva foto, y cambia su valor en la base de datos, de igual manera se podría eliminar la imagen anterior para no tener espacio de memoria
desperdiciado.