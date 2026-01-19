#!/bin/bash

# Variables
ORIGEN="/home/alejandro/ROADmap/linux_bash/scripts/"
DESTINO="/home/alejandro/ROADmap/linux_bash/scripts/cronjobs"
FECHA=$(date +"%Y-%m-%d")

# Crear backup comprimido
tar -czf $DESTINO/backup_$FECHA.tar.gz $ORIGEN

