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

src/matrix.$(OBJEXT): mtrx/matrices.h


test_fasta_SOURCES	=	src/fasta.cpp \
										src/fasta.h \
										src/iocif.cpp \
										src/mas.cpp \
										src/primitives-3d.cpp \
										src/primitives-3d.h \
										src/structure.cpp \
										src/structure.h \
										src/buffer.h \
										src/align-2d.h \
										src/utils.cpp \
										tests/test_fasta.cpp

test_fasta_LDADD	=	$(shared_LDADD) \
									$(BOOST_UNIT_TEST_FRAMEWORK_LIB)

test_readpdb_SOURCES	=	src/fasta.cpp \
										src/fasta.h \
										src/iocif.cpp \
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
							-I$(srcdir)/src/

BUILT_SOURCES	=	mtrx/matrices.h
CLEANFILES =	mtrx/matrices.h
EXTRA_DIST =	mtrx/mkmat_h.pl \
							mtrx/BLOSUM30 \
							mtrx/BLOSUM45 \
							mtrx/BLOSUM62 \
							mtrx/BLOSUM80 \
							mtrx/GONNET250 \
							mtrx/PAM20 \
							mtrx/PAM350 \
							mtrx/PAM60

mtrx/matrices.h: mtrx/mkmat_h.pl
	$(PERL) mtrx/mkmat_h.pl mtrx/

if HAVE_CPPCHECK
cppcheck:
		$(CPPCHECK) --quiet --enable=style $(srcdir)/src $(srcdir)/test
check:	cppcheck
endif
