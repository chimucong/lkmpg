PWD := $(CURDIR) 
KDIR := /lib/modules/$(shell uname -r)/build
# KDIR := /home/test/linux-5.10.181

obj-m += hello-1.o 


all: 
	make -C $(KDIR) M=$(PWD) modules 
 
clean: 
	make -C $(KDIR) M=$(PWD) clean