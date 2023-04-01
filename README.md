# stm32f103-freertos
Example freertos on stm32f103. This project demonstrate using of freertos on
example blinking of led with using of thread. Project is created with using of
CubeMX. Program is possible compiling and writing into stm32f103 with using of
my own compile script. Writing an reading of flash memory is posible with ST-LINK.

# conecting on stm32f103
```
LED1 - GPIOA8
LED2 - GPIOAB12
```

# print help for using example
```
./compile -h
```

# compile project
```
./compile -c
```

# flash memory
```
./compile -w
```

# read memory
```
./compile -r
```

# erase memory
```
./compile -e
```
# clear project
```
./compile -d
```
