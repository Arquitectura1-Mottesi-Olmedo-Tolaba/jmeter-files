
dpkg -S "$(which jmeter)" >/dev/null 2>&1 || { echo >&2 "I require jmeter to be installed but it's not.  Aborting."; exit 1; }

echo "Necesita una version de Jmeter mayor o igual a la 3.0.0, sino le recomendamos actualizar para poder continuar, su version de jmeter es"
dpkg-query -W -f='${Version}\n' jmeter 
echo "Verifique que no este usando una version global (por ejemplo ubuntu mantiene hasta 2.x en los repos"
read -p "Desea continuar (S) o (N) " continue

if [ $continue = "N" ]; then
    echo "Intente nuevamente "; exit 1;
fi 


echo $versionInstalled


baseURL='http://localhost:8080'
read -p "Enter baseURL -- default is http://localhost:8080 --: " newBaseUrl

if [ -z "${newBaseUrl}" ]; then
    echo "Usando "$baseURL
fi 

baseURL=${newBaseUrl:-http://localhost:8080}

specificEndPoint='/surveys/codesCSV/'
fullEndPoint=$baseURL$specificEndPoint
echo "Obteniendo los codigos de $fullEndPoint"
curl $fullEndPoint > codes.csv
echo "Listo, el archivo codes.csv fue creado"



