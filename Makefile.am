bin_PROGRAMS	=	mkdssp test_readpdb

shared_LDADD =	$(BOOST_DATE_TIME_LIB) \
								$(BOOST_FILESYSTEM_LIB) \
								$(BOOST_IOSTREAMS_LIB) \
								$(BOOST_PROGRAM_OPTIONS_LIB) \
								$(BOOST_REGEX_LIB) \
								$(BOOST_SYSTEM_LIB) \
								$(BOOST_THREAD_LIB) \
								-lpthread

mkdssp_SOURCES	=	src/dssp.cpp \
									src/dssp.h \
									src/iocif.cpp \
									src/iocif.h \
									src/mas.cpp \
									src/mas.h \
									src/mkdssp.cpp \
									src/primitives-3d.cpp \
									src/primitives-3d.h \
									src/structure.cpp \
									src/structure.h \
									src/buffer.h \
									src/utils.cpp \
									src/utils.h \
									src/version.h

mkdssp_LDADD	=	$(shared_LDADD)


test_readpdb_SOURCES	=	src/iocif.cpp \
										src/mas.cpp \
										src/primitives-3d.cpp \
										src/primitives-3d.h \
										src/structure.cpp \
										src/structure.h \
										src/buffer.h \
										src/align-2d.h \
										src/utils.cpp \
										tests/test_readpdb.cpp

test_readpdb_LDADD	=	$(shared_LDADD) \
									$(BOOST_UNIT_TEST_FRAMEWORK_LIB)

AM_CPPFLAGS	=	-std=c++11 \
							-pedantic \
							-Wall \
							-Werror \
							-Wno-reorder \
							$(BOOST_CPPFLAGS) \
							$(BZ2LIB_CPPFLAGS) \
							$(ZLIB_CPPFLAGS) \
							-I$(srcdir)/src/

AM_LDFLAGS	=	$(BOOST_LDFLAGS) \
				$(BZ2LIB_LDFLAGS) \
				$(ZLIB_LDFLAGS)


if HAVE_CPPCHECK
cppcheck:
		$(CPPCHECK) --quiet --enable=style $(srcdir)/src $(srcdir)/test
check:	cppcheck
endif
