AM_CPPFLAGS = -I$(top_srcdir)/include
bin_PROGRAMS = vde_cryptcab

# Avoid wrong optimizations due to strict aliasing rules when making casts
# between socket structs.
AM_CFLAGS = -fno-strict-aliasing -DHAVE_CHACHA -DTFM_TIMING_RESISTANT -DNO_ECC -DNO_RSA

if ENABLE_PROFILE
  AM_CFLAGS += -pg --coverage
  AM_LDFLAGS = -pg --coverage
endif

vde_cryptcab_SOURCES = crc32.c crc32.h cryptcab.h cryptcab.c vde_cryptcab_server.c vde_cryptcab_client.c
vde_cryptcab_LDADD = $(top_builddir)/src/common/libvdecommon.la -lwolfssl $(top_builddir)/src/lib/libvdeplug.la
