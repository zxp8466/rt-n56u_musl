.EXPORT_ALL_VARIABLES:
.PHONY: all romfs clean

ifndef ROOTDIR
ROOTDIR=..
endif
ifndef ROMFSDIR
ROMFSDIR=$(ROOTDIR)/romfs
endif

include $(PROJECT_CONFIG)
include $(ARCH_CONFIG)

DESTDIR=$(ROOTDIR)/stage

LIBC_DIR=musl-1.1.16

all: config_test
	$(MAKE) -j$(HOST_NCPU) -C $(LIBC_DIR) all && \
	$(MAKE) -C $(LIBC_DIR) install || \
	exit $$? ; \
	if [ ! -f $(DESTDIR)/.installed_$(LIBC_DIR) ] ; then \
		touch $(DESTDIR)/.installed_$(LIBC_DIR) ; \
	fi

	
config_test:
	( if [ -f ./config_done ]; then \
		echo "the same configuration" ; \
	else \
		( cd $(LIBC_DIR) ; \
		./configure \
		--prefix=/ \
		--enable-debug \
		--enable-optimize \
		--disable-gcc-wrapper ; ) \
	fi )


%_only:
	$(MAKE) -C $(@:_only=)

%_romfs:
	$(MAKE) -C $(@:_romfs=) romfs

%_clean:
	$(MAKE) -C $(@:_clean=) clean

romfs:
	cp -fP $(DESTDIR)/lib/libc.so $(ROMFSDIR)/lib ; \
	$(STRIP) $(ROMFSDIR)/lib/libc.so ; \
	cp -fP $(CONFIG_CROSS_COMPILER_ROOT)/lib/libgcc_s.so.1 $(ROMFSDIR)/lib ; \
	$(STRIP) $(ROMFSDIR)/lib/libgcc_s.so.1 ; \
	ln -sf ../lib/libc.so $(ROMFSDIR)/bin/ldd ; \
	cp -fP $(DESTDIR)/lib/ld-musl*.so* $(ROMFSDIR)/lib ; \
	chmod +x $(ROMFSDIR)/lib/libc.so ; \
	chmod +x $(ROMFSDIR)/bin/ldd ; \
	chmod +x $(ROMFSDIR)/lib/ld-musl*.so* 

clean:
	rm -f $(DESTDIR)/.installed_$(LIBC_DIR)
	$(MAKE) -C $(LIBC_DIR) distclean
	rm -f config_done
