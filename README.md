# jmeter-files
#### Archivos de JMeter

#### PREREQUISITOS

Jmeter >= 3.0.0


###                                        PRE CONFIGURACION

#### Abrir Jmeter e importar el archivo arq_soft.jmx.
#### Configurar las variables de configuracion con el path correspondiente a donde tenga los archivos de configuracion de CSV Data Set
##### primerMateria segundaMateria y codigosDisponibles

##### CAMBIE
/home/luciano/Documentos/jmeter-files/primerMateria.csv

por su ubicacion a los archivos

##### Darle accesos de ejecucion al archivo populate-codes
./populate-codes.sh 

#### Que pruebas estamos corriendo aca?

#### Como correr esto?

Post PRE CONFIGURACION

##### GUI
Apretando play

##### NON-GUI (desde la carpeta de jmeter
sh jmeter -n -t /path/to/your/arq_soft.jmx -l /path/to/results/file.csv -e -o /path/to/HTMLResults/

Concrete example:

sh jmeter -n -t /home/luciano/Documentos/jmeter-files/arq_soft.jmx -l /home/luciano/Documentos/jmeter-files/results-file.csv -e -o /home/luciano/Documentos/jmeter-files/HTMLResults/
