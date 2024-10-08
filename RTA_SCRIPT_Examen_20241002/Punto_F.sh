#!/bin/bash 

echo
echo "Filtro Avanzado: "
echo "Mi ip publica es: $(curl -s ifconfig.me)" >> ~/repogit/UTNFRA_SO_1P2C_2024_AntunezEstevez/RTA_ARCHIVOS_Examen_20241002/Filtro_Avanzado.txt
echo "La URL de mi repositorio es: $(git remote get-url origin)" >> ~/repogit/UTNFRA_SO_1P2C_2024_AntunezEstevez/RTA_ARCHIVOS_Examen_20241002/Filtro_Avanzado.txt  
echo "Mi usuario es: $(whoami)" >> ~/repogit/UTNFRA_SO_1P2C_2024_AntunezEstevez/RTA_ARCHIVOS_Examen_20241002/Filtro_Avanzado.txt
echo "El hash de mi usuario es: $(sudo getent shadow $(whoami))" >> ~/repogit/UTNFRA_SO_1P2C_2024_AntunezEstevez/RTA_ARCHIVOS_Examen_20241002/Filtro_Avanzado.txt
echo
echo "Muestro archivo: "
cat ~/repogit/UTNFRA_SO_1P2C_2024_AntunezEstevez/RTA_ARCHIVOS_Examen_20241002/Filtro_Avanzado.txt
echo
