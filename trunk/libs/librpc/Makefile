SRC_NAME=librpc-uclibc

# CFLAGS += -O2 -fPIC
LDFLAGS += -Wl,--gc-sections 

all: config_test
	$(MAKE) -C $(SRC_NAME)

config_test:
	( if [ -f ./config_done ]; then \
		echo "the same configuration"; \
	else \
		make configure && touch config_done; \
	fi )

configure:
	cd $(SRC_NAME) && cmake .
	

clean:
	if [ -f $(SRC_NAME)/Makefile ] ; then \
		$(MAKE) -C $(SRC_NAME) clean ; \
	fi ; \
	rm -rf $(SRC_NAME)/CMakeFiles \ 
	rm -f config_done

install:
	$(MAKE) -C $(SRC_NAME) install DESTDIR="$(STAGEDIR)" ;

romfs:
	cp -fP $(DESTDIR)/lib/librpc.so $(ROMFSDIR)/lib ; \
	$(STRIP) $(ROMFSDIR)/lib/librpc.so
