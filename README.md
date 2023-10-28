# Laboratorio3-Intro-a-ROS

## Metodología
### Conexión con MATLAB
Primero se trabajo en la conexión de matlab con ROS para esto se uso una intalación nativa de ubuntu 20.04, despues de haberse seguido los pasos de instalación de ROS para ubuntu se sigui el siguente procedimiento:
1. Se creo un scrip con el codigo proporcionado en la guia ([Scrip 1](https://github.com/anhernadezdu/Laboratorio3-Intro-a-ROS/blob/main/MatlabLab3.m).) en el cual se puede manipular la pose de la tortuga de forma relativa en el eje X. Se hizo la prueba corriendo ROS en una terminal y en otra turtlesim.
2. Se creo un scrip con el cual se pude saber los valores de la pose de tortuga ([Scrip 2](https://github.com/anhernadezdu/Laboratorio3-Intro-a-ROS/blob/main/MatlabLab3_2.m).). Se mantuvieron las dos terminales anteriores corriendo para esto y se comprobo la pose que tenia la tortuga dado el scrip anterior.
3. Se creo un scrip el cual permite controlas todos los elementos de la pose de la tortuga(movimiento en los ejes X y Y y rotación en el eje Z) ([Scrip 3](https://github.com/anhernadezdu/Laboratorio3-Intro-a-ROS/blob/main/MatlabLab3_3.m).)
4. Se consulto en los repositorios las funciones que tiene MATLAB para trabajar con ROS para encotnrar cual es la que permite finalizar el nodo maestro en MATLAB
### Conexion con Python
Se realiza el siguiente procedimiento:
1. Usando las librerias proporcionadas en la guia, junto con los enlaces provistos, se utilizo la funcion _getkey()_ para poder recibir las teclas que se oprimen en Linux.
2. Una vez hechos con la funcion descrita anteriormente, la funcion _main_ inicializa el nodo de ROS usando el comando _rospy.init_node()_ y  usando un publisher con el comando _rospy.Publisher()_  con topic : cmd_vel, se controla la velocidad de la tortuga y todos sus movimientos.
3. Usando los _ServiceProxy_ que ocupan los recursos de _TeleportAbsolute_ y _TeleportRelative_ se crean las funciones _TeleportA_ y _TeleportR_ para reiniciar la posicion de la tortuga y girarla 180°, respectivamente. Cabe destacar que el giro de 180° que realiza la otrtuga con _TeleportR_ lo realiza respecto a su orientacion en ese instante.
4. Finalmente se crea un ciclo _while_ el cual permite guardar el valor de la tecla presionada y usando condicionales se determina si se presiono la tecla "w", "s", "a" o "d"; para lo cual se efectuan los cambios en la velocidad linear para las dos primeras teclas, y en la velocidad angular para las ultimas dos. En caso de presionar la tecla "r" o la barra espaciadora, se usan los ServiceProxy definidos para reiniciar posicion de la tortuga y realizar una rotacion realtiva, respectivamente.
## Resultados
### Conexión con MATLAB
**Scrip1**
En este scrip se tienen tres secciones:
1. Inalizcion del nodo maestro en matlab.
2. La creacion del publicador el cual genera el enlace con el nodo y modificara el valores del nodo de la tortuga y el mensaje que se enviara al nodo para manipularlo.
3. El valor del mensaje para alterar el valor en el eje X y el envio al nodo.

Como se puede ver en la imagen al correrse el scrip se obtiene un movimiento en X de una unidad este valor se puede alterar al cambiar en la sección 3 del scrip el valor de velMsg.Lineal.X

![Imagen de WhatsApp 2023-10-27 a las 22 22 56_a014bd4e](https://github.com/anhernadezdu/Laboratorio3-Intro-a-ROS/assets/70998067/d39c09e8-cad2-4300-811b-8542d4b7c9d8)

![Imagen de WhatsApp 2023-10-27 a las 22 22 56_f645fdcf](https://github.com/anhernadezdu/Laboratorio3-Intro-a-ROS/assets/70998067/b8d4b068-24a5-439e-b48b-30643dc4f581)

**Scrip2**
En este scrip se tienen tres secciones:
1. Inalizcion del nodo maestro en matlab
2. La creacion del subscriber para conocer la pose de la tortuga y su impresion como objeto en matlab.
3. La obtención del mensaje con los datos de la pose si el mensaje esta completamente vacio se toman como valores nullos los datos de la pose sino se sacan del mensaje obtenido los valores y se imprimen en la consola de matlab como se ve en la siguente imagen.

Como se puede observar la imagen vemos en la consola los valores obtenidos en Posicion actual de la tortuga en X y Y y su orientación (aángulo theta).

![Imagen de WhatsApp 2023-10-27 a las 22 31 34_b949535e](https://github.com/anhernadezdu/Laboratorio3-Intro-a-ROS/assets/70998067/5ecec60a-952a-4804-a5ff-52f69d299bfb)


## Análisis

## Conclusiones
1. Fue vital tener en cuenta la compatibilidad de los sistemas operativos con ROS, ademas de realizar una previa investigacion en la red acerca de la operabilidad en el sistema operativo Linux para el desarrollo de la practica.
2. ServiceProxy permite reutilizar servicios y módulos de software ademas de que facilitan contruccion de un codigo compacto que tambien puede ser reutilizado para futuras aplicaciones.
