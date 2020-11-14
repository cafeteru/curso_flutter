# Curso sobre Flutter

## Conceptos clave

- Wigdet: es una clase puede tener argumentos posicionales y con nombre. (Todo en Flutter, son widgets. Como los componentes en Angular)
  - StatelessWidget: sin estado. (Ejemplos: botones)
  - StatefulWidget: con estado. Si queremos guardar los cambios en él. Puede redibujarse a si mismo si cambia su estado.

- Árbol de Widgets (Estructura general visualmente dentro de la app)
  - Scaffold: la pantalla en general.
  - Appbar: header de la aplicación.
  - TabBar: footer de la aplicación.
  - Container: parte central donde se colocarán el resto de Widgets.

- Estructura del proyecto
  - android: carpeta que contiene la aplicación android. (No se suele modificar)
  - ios: carpeta que contiene la aplicación IOS. (No se suele modificar)
  - build: carpeta que contiene código que se ejecuta. (No se suele modificar)
  - lib: carpeta donde creamos nuestro código.
  - test: contiene el código de test
  - Fichero .iml = datos de la aplicación
  - Fichero pubspec.yaml = es como el package.json de node.

## Commandos

- `flutter packages get`: instala las depencias del proyecto.
