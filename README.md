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
flutter run
```

# Descripción
Esta es una aplicación de consola que realiza tres solicitudes a la API de [Fake store](https://fakestoreapi.com/).Las funcionalidades de la aplicación incluyen:

- Obtener todos los productos. 
- Obtener todos los usuarios. 
- Obtener todos los carritos de compra.

Al ejecutar este proyecto, se realizarán las tres solicitudes y se mostrará en la consola la información correspondiente a cada una de ellas.
