Here is an excerpt from the crontab that sends the commands to the various MPNs (resulting a response that usbreel.sh can understand and do something with). 

00 * * * * echo -n 'upperfence-mpnreset' > /dev/ttyUSB0

02 * * * * echo -n 'upperfence-getpoints' > /dev/ttyUSB0

05 * * * * echo -n 'basement-mpnreset' > /dev/ttyUSB0

07 * * * * echo -n 'basement-getpoints' > /dev/ttyUSB0


usbreel.sh
==============
listens on /dev/ttyUSB0 for the MPN response to these above commands. It will then call a PHP file on Apache that updates the DB

curry_box_test.dbdump
===============
is curry_box_test contents to get you started
