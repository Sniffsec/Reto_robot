#!/bin/bash
sleep 5
# Este sctript era para que se ejecutase todo al encender la raspberri pero no funciona bien la del server

#
/usr/bin/node /home/pi/pagina/serverReto/app.js >/dev/null 2>&1 &

# Camara
/home/pi/pagina/camara.py >/dev/null 2>&1 &

# Server de movimiento
python3 /home/pi/pagina/movimiento.py  >/dev/null 2>&1 &

# sensor temperaatura
node /home/pi/pagina/ATLAS/sensor.js >/dev/null 2>&1 &

# mqtt
node /home/pi/pagina/mqtt/mqtt.js >/dev/null 2>&1 &


