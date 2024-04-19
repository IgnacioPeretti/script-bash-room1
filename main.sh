#!/bin/bash



# Mostramos el nombre del host







get_hostname(){



  echo "Informe del sistema para: $(hostname)"



}







# Imprimimos la fecha y hora actual







get_date(){



  DIA=`date +"%d/%m/%Y"`



  HORA=`date +"%H:%M"`



  echo "Hoy es $DIA" 



  echo "La hora actual es $HORA."



}







# Esta linea utiliza el comando df para mostrar el uso del disco del sistema y el comando grep para filtrar solo las líneas que terminan con "/"(indicando la partcion raíz).







get_usedisk(){ 



  echo "Uso del disco raíz: $(df -h | grep ' /$' )" 



}











# Muestra los usuarios conectados 







get_user(){



  echo "Usuarios conectados: $(who)" 



}











# Mostrar el uso de memoria en megabytes







get_memory() {



  free -m | awk 'NR==2{printf "Total: %sMB - Disponible: %sMB\n", $2, $7}'



}















# Ingresamos el nombre de un proceso y mostramos las coincidencias







get_processes(){



  proceso_nombre=$1



  echo "Processes: $(ps aux |grep $proceso_nombre)"



}







echo "Bienvenido al Script de Nacho!"











main(){



  echo "Ingresa el nombre del proceso a buscar:"



  _proceso_nombre=$1



  get_hostname



  get_date



  get_usedisk



  get_user



  get_memory



  get_processes $_proceso_nombre



  echo "Este es mi parámetro: $1"



}







main $1







echo "Fin del script"
