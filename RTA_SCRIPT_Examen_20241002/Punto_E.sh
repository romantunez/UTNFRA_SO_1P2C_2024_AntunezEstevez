#!/bin/bash
echo
echo "-- Busco la informacion y la guardo en Filtro Basico.txt: --"
grep MemTotal /proc/meminfo >> ~/repogit/UTNFRA_SO_1P2C_2024_AntunezEstevez/RTA_ARCHIVOS_Examen_20241002/Filtro_basico.txt
sudo dmidecode -t chassis | grep -i "Manufacturer" >> ~/repogit/UTNFRA_SO_1P2C_2024_AntunezEstevez/RTA_ARCHIVOS_Examen_20241002/Filtro_basico.txt
echo
echo "-- Muestro archivo: --"
cat ~/repogit/UTNFRA_SO_1P2C_2024_AntunezEstevez/RTA_ARCHIVOS_Examen_20241002/Filtro_basico.txt
echo
