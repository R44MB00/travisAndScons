#!/bin/bash

endian=$(echo -n I | tr -d [:space:] | od -to2 | head -n1 | awk '{print $2}' | cut -c6)
if (($endian == "1"))
then
  echo "LittleEndian"
else
  echo "BigEndian"
fi