import sys
#El término inglés endianness designa el formato en el que se almacenan los datos de más de un byte en un ordenador. ..
stdout=('BigEndian', 'LittleEndian')[sys.byteorder=='little'] #Byteorder marca de orden de bytes se especifica (little o big) segun lo
print stdout											   #Lo que se desee escribir
