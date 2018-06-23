echo 'A punto de solicitar los archivos'


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



