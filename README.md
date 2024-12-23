# Uso de la app
Para utilizar la aplicación, sigue estos pasos:

1. **Clonar el repositorio**:
Clona este repositorio en tu máquina local.
```bash
git clone https://github.com/Camila237/etapa2
```

2. **Instalar las dependencias**: 
Ejecuta el siguiente comando para instalar las dependencias del proyecto:
```bash
flutter pub get
```

3. **Generar los archivos generados**:
Para generar los archivos necesarios, ejecuta el siguiente comando:

> [!IMPORTANT]
> Este comando se ejecuta cada vez que hagas un cambio en los modelos.

```bash
dart run build_runner build
```

4. **Correr la app**:
Para correr la app en un dispositivo o emulador, ejecutar el siguiente comando:
```bash
dart run bin/package_fake_api_store.dart
```

# Descripción
Esta es una aplicación de consola que realiza tres solicitudes a la API de [Fake store](https://fakestoreapi.com/).Las funcionalidades de la aplicación incluyen:

- Obtener todos los productos. 
- Obtener todos los usuarios. 
- Obtener todos los carritos de compra.

Al ejecutar este proyecto, se realizarán las tres solicitudes y se mostrará en la consola la información correspondiente a cada una de ellas.

# Ejemplo de uso 
A continuación se muestra un ejemplo de cómo consumir el servicio para obtener productos y el tipo de respuesta que recibirías.

```dart
import 'package:package_fake_api_store/data/apiClient/http_client.dart';
import 'package:package_fake_api_store/domain/services/products_api_service.dart';
import 'package:http/http.dart' as http;

void main() async {
  final HttpClient httpClient = HttpClient(http.Client());
  final ProductsApiService productsApiService = ProductsApiService(httpClient);

  print('Obteniendo productos...');
  final response = await productsApiService.fetchData();

  response.fold(
    (error) => print('Error: ${error.message}'),
    (products) {
      for (var product in products) {
        print('Nombre: ${product.title} - Precio: ${product.price} - Puntuación: ${product.rating.rate}');
      }
    },
  );
}
```

## Respuesta esperada 
La respuesta esperada al consumir el servicio para obtener productos sería similar a la siguiente:
    
```bash
Obteniendo productos...
Nombre: Producto 1 - Precio: 29.99 - Puntuación: 4.5
Nombre: Producto 2 - Precio: 49.99 - Puntuación: 4.0
Nombre: Producto 3 - Precio: 19.99 - Puntuación: 3.8
...
```
    