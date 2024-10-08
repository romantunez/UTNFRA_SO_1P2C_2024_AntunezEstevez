#!/bin/bash

echo "--- Creo Grupos ---"
sudo groupadd p1c2_2024_gAlumno
sudo groupadd p1c2_2024_gProfesores
echo
echo "--- Creo usuario ---"
for user in p1c2_2024_A1 p1c2_2024_A2 p1c2_2024_A3; do
    sudo useradd -m -s /bin/bash -G p1c2_2024_gAlumno $user
done
sudo useradd -m -s /bin/bash -G p1c2_2024_gProfesores p1c2_2024_P1
echo "--- Genero clave --- "
echo "p1c2_2024_A1:p1c2_2024_A1" | sudo chpasswd
echo "p1c2_2024_A2:p1c2_2024_A2" | sudo chpasswd
echo "p1c2_2024_A3:p1c2_2024_A3" | sudo chpasswd
echo "p1c2_2024_P1:p1c2_2024_P1" | sudo chpasswd
echo
echo "--- Ajusto los Permisos ---"
sudo chmod -R 750 $HOME/Examenes-UTN/alumno_1
sudo chmod -R 760 $HOME/Examenes-UTN/alumno_2
sudo chmod -R 700 $HOME/Examenes-UTN/alumno_3
sudo chmod -R 770 $HOME/Examenes-UTN/profesores

echo
echo "---Ajusto Dueños ---"
sudo chown -R p1c2_2024_A1:p1c2_2024_A1 $HOME/Examenes-UTN/alumno_1
sudo chown -R p1c2_2024_A2:p1c2_2024_A2 $HOME/Examenes-UTN/alumno_2
sudo chown -R p1c2_2024_A3:p1c2_2024_A3 $HOME/Examenes-UTN/alumno_3
sudo chown -R p1c2_2024_P1:p1c2_2024_gProfesores $HOME/Examenes-UTN/profesores
echo
echo "--- Valido permisos y owners ---"
sudo ls -ld $HOME/Examenes-UTN/alumno_1
sudo ls -l $HOME/Examenes-UTN/alumno_1
sudo ls -ld $HOME/Examenes-UTN/alumno_2
sudo ls -l $HOME/Examenes-UTN/alumno_2
sudo ls -ld $HOME/Examenes-UTN/alumno_3
sudo ls -l $HOME/Examenes-UTN/alumno_3
sudo ls -ld $HOME/Examenes-UTN/profesores
sudo ls -l $HOME/Examenes-UTN/profesores

echo "--- Creo archivo validar ---"
for user in p1c2_2024_A1 p1c2_2024_A2 p1c2_2024_A3 p1c2_2024_P1; do
    su -c "whoami > $HOME/Examenes-UTN/${user}/validar1.txt" $user
done

