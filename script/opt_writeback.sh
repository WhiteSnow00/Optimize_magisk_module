#!/bin/sh
path=/sys/block/zram0
      sleep 120
      echo all > $path/idle
      sleep 90
      echo idle > $path/writeback
