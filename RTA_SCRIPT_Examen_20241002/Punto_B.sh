#!/bin/bash

sudo fdisk /dev/sdd << EOF
n
e


w
EOF


DISCO="/dev/sdc"
echo "==== Realizamos el particionamiento extendido del disco de 10G ===="
sudo fdisk $DISCO << EOF
n
e



w
EOF
echo "==== Realizo las particiones lógicas ===="
contador=1
while [ $contador -le 9 ]; do
    (
    echo n
    echo
    echo +1G
    echo w
    ) | sudo fdisk $DISCO
    contador=$((contador + 1))
done
sudo fdisk /dev/$DISCO << EOF
n


w
EOF
echo " ==== Muestro el particionamiento ===="
sudo fdisk $DISCO -l
echo "==== Particionamiento completado. ===="
echo
echo "==== Formateando las particiones lógicas ===="
for i in {5..14}; do
    sudo mkfs.ext4 "$DISCO"$i
done

echo "==== Particionamiento y formateo completados. ===="
echo
echo "--- Monto las Particiones ---"
sudo mount ${DISCO}5 /alumno_1/parcial_1
sudo mount ${DISCO}6 /alumno_1/parcial_2
sudo mount ${DISCO}7 /alumno_1/parcial_3
sudo mount ${DISCO}8 /alumno_2/parcial_1
sudo mount ${DISCO}9 /alumno_2/parcial_2
sudo mount ${DISCO}10 /alumno_2/parcial_3
sudo mount ${DISCO}11 /alumno_3/parcial_1
sudo mount ${DISCO}12 /alumno_3/parcial_2
sudo mount ${DISCO}13 /alumno_3/parcial_3
sudo mount ${DISCO}14 /profesores
echo
echo "--- Valido montaje---"
df -h |grep datos

