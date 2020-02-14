#!/bin/bash
OUTPUTDIR=/mydumper/$( date +%Y-%m-%d_%H-%M-%S )

mkdir -p $OUTPUTDIR
/usr/bin/mydumper --host=mysql --password=okgreat --outputdir=$OUTPUTDIR --rows=50000 --compress --threads=2 --compress-protocol
