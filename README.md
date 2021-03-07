# Practica CIU: Transformaciones básicas 3D - Sistema Solar

Asignatura: Creando interfaces de usuario

Curso: 4º

Autor: Eduardo Maldonado Fernández

## Introducción
Se ha realizado un programa en processing que crear un prototipo del sistema solar con 6 planetas: Mercurio, Venus, La tierra, Marte, Júpiter, Neptuno y el propio sol como estrella en la que giran el resto de planetas nombrados. Además, se ha añadido varias lunas.

## Descripción
Cuando se ejecuta el programa, se visualiza el sol como estrella principal en el medio del sistema y los planetas alrededor de esta estrella siguiendo la misma ubicación que en la realidad. Se ha añadido que la posición en el ejeY sea random de un cierto rango para mayor realismo. En cuanto a los planetas más cercanos al sol, giran a una velocidad de traslación mucho mayor respecto a otro más lejanos como pueden ser Neptuno o Júpiter.

![Sistema solar](/sistema_solar.gif "SystemSolar")

## Organización del código

<p style=”text-align: justify;”>Primero establecemos unas variables globales: declaramos unas variables float que nos indicaran el angulo del planeta respecto al sol. Además, se añade unas variables para la posiciones de los planetas y PShape variables globales para cada planeta, así como para el fondo del sistema solar un PImage.</p>

En la función setup() establecemos el tamaño de la pantalla completa, y diversos valores de las variables globales explicados anteriormente y generamos los planetas correspondientes medianteo el método createPlanet() que se explicará a continuación.

A partir de la función draw() llamaremos a una serie de funciones que explicamos su utilidad:

- **drawControl():** Con este función, se mostrará el control edonde se explica como terminar la ejecución del programa.

-	**createPlanet():** Este metodo llamado en el setup() genera crear un planeta correspondiente añadiendole su textura correspondiente.

-	**showSol():** Mediante esta función, se muestra el sol. 

-	**showPlanet():** Mediante una serie de parametros, se mostrará el planeta pasado entre ellos, así como se va comprobando si se ha hecho un giro completo de la orbita alrededor del sol llamando al método addAngOrbita().

-	**showSatellite():** Mediante una serie de parametros, se mostrará el satelite de un planeta correspondiente.

-	**addAngOrbita():** En caso de haber superado los 360 grados, se reseta el giro de la orbita para volver a empezar desde su posición desde 0º.

-	**getAngOrbita():** Devuelve el angulo de la orbita actual de cada planeta correspondiente.

## Descarga e instalación
Para poder probar este programa es necesario descargar el fichero sistema_solar.pde, así como la carpeta /data, para poder descargar todas las texturas necesarias para la ejecución.
