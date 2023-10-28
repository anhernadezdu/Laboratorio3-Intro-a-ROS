# Laboratorio3-Intro-a-ROS

## Metodología
### Conexión con MATLAB
Primero se trabajo en la conexión de matlab con ROS para esto se uso una intalación nativa de ubuntu 20.04, despues de haberse seguido los pasos de instalación de ROS para ubuntu se sigui el siguente procedimiento:
1. Se creo un scrip con el codigo proporcionado en la guia ([Scrip 1](https://github.com/anhernadezdu/Laboratorio3-Intro-a-ROS/blob/main/MatlabLab3.m).) en el cual se puede manipular la pose de la tortuga de forma relativa en el eje X. Se hizo la prueba corriendo ROS en una terminal y en otra turtlesim.
2. Se creo un scrip con el cual se pude saber los valores de la pose de tortuga ([Scrip 2](https://github.com/anhernadezdu/Laboratorio3-Intro-a-ROS/blob/main/MatlabLab3_2.m).). Se mantuvieron las dos terminales anteriores corriendo para esto y se comprobo la pose que tenia la tortuga dado el scrip anterior.
3. Se creo un scrip el cual permite controlas todos los elementos de la pose de la tortuga(movimiento en los ejes X y Y y rotación en el eje Z) ([Scrip 3](https://github.com/anhernadezdu/Laboratorio3-Intro-a-ROS/blob/main/MatlabLab3_3.m).)
4. Se consulto en los repositorios las funciones que tiene MATLAB para trabajar con ROS para encotnrar cual es la que permite finalizar el nodo maestro en MATLAB

## Resultados
### Conexión con MATLAB
**Scrip1** \n
En este scrip se tienen tres secciones:
1. Inalizcion del nodo maestro en matlab
2. La creacion del publicador el cual genera el enlace con el nodo y modificara el valores del nodo de la tortuga y el mensaje que se enviara al nodo para manipularlo.
3. El valor del mensaje para alterar el valor en el eje X y el envio al nodo

Como se puede ver en la imagen al correrse el scrip se obtiene un movimiento en X de una unidad este valor se puede alterar al cambiar en la sección 3 del scrip el valor de velMsg.Lineal.X

![Imagen de WhatsApp 2023-10-27 a las 22 22 56_a014bd4e](https://github.com/anhernadezdu/Laboratorio3-Intro-a-ROS/assets/70998067/d39c09e8-cad2-4300-811b-8542d4b7c9d8)

![Imagen de WhatsApp 2023-10-27 a las 22 22 56_f645fdcf](https://github.com/anhernadezdu/Laboratorio3-Intro-a-ROS/assets/70998067/b8d4b068-24a5-439e-b48b-30643dc4f581)

## Análisis

## Conclusiones
