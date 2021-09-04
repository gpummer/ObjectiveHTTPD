# $Id: GNUmakefile,v 1.11 2004/12/08 21:20:43 marcel Exp $


OBJC_RUNTIME_LIB=ng

include $(GNUSTEP_MAKEFILES)/common.make

FRAMEWORK_NAME = ObjectiveHTTPD

# GNUSTEP_LOCAL_ADDITIONAL_MAKEFILES=base.make
GNUSTEP_BUILD_DIR = ${HOME}/Build

# include $(GNUSTEP_MAKEFILES)/common.make


LIBRARY_NAME = libObjectiveHTTPD
# CC = clang


OBJCFLAGS += -g -Wall -Wno-import


ObjectiveHTTPD_HEADER_FILES_INSTALL_DIR = /ObjectiveHTTPD

libObjectiveHTTPD_HEADER_FILES = \
    MPWHTTPServer.h \
    MPWTemplater.h \
    MPWSiteMap.h \
    MPWSiteServer.h \
    WAHtmlRenderer.h \
    MPWHtmlPage.h \
    MPWPlainHtmlContent.h \
    MPWSchemeHttpServer.h \
    MPWPOSTProcessor.h \

ObjectiveHTTPD_HEADER_FILES = $(libObjectiveHTTPD_HEADER_FILES)

libObjectiveHTTPD_OBJC_FILES = \
    MPWHTTPServer.m \
    MPWSchemeHttpServer.m \
    MPWPOSTProcessor.m \
    MPWTemplater.m \
    MPWSiteMap.m \
    MPWSiteServer.m \
    MPWHTMLRenderScheme.m \
    WAHtmlRenderer.m \
    MPWHtmlPage.m \
    MPWPlainHtmlContent.m \
    MPWPlainCSSContent.m \


ObjectiveHTTPD_OBJC_FILES = $(libObjectiveHTTPD_OBJC_FILES)

# libObjectiveHTTPD_C_FILES = \



LIBRARIES_DEPEND_UPON += -lMPWFoundation -lObjectiveSmalltalk -lgnustep-base

LDFLAGS += -L ${HOME}/Build/obj 


libObjectiveHTTPD_INCLUDE_DIRS += -I.headers -I. -I../MPWFoundation/.headers/   -I../Objective-Smalltalk/.headers/
ObjectiveHTTPD_INCLUDE_DIRS = $(libObjectiveHTTPD_INCLUDE_DIRS)

-include GNUmakefile.preamble
include $(GNUSTEP_MAKEFILES)/library.make
include $(GNUSTEP_MAKEFILES)/framework.make
-include GNUmakefile.postamble

before-all ::

#	@$(MKDIRS) $(libMPWFoundation_HEADER_FILES_DIR)
#	cp *.h $(libMPWFoundation_HEADER_FILES_DIR)
#	cp Collections.subproj/*.h $(libMPWFoundation_HEADER_FILES_DIR)
#	cp Comm.subproj/*.h        $(libMPWFoundation_HEADER_FILES_DIR)
#	cp Streams.subproj/*.h     $(libMPWFoundation_HEADER_FILES_DIR)
#	cp Threading.subproj/*.h   $(libMPWFoundation_HEADER_FILES_DIR)

after-clean ::
	rm -rf .headers

# following targets not working, because of missing TestObjectiveSmalltalk directory
test    : libObjectiveHTTPD tester
	LD_LIBRARY_PATH=/usr/GNUstep/Local/Libraries:/usr/local/lib:${HOME}/Build/obj/  ./TestObjectiveSmalltalk/testobjectivesmalltalk

tester  :
	$(CC) -fobjc-runtime=gnustep-2.1 -fblocks -I../MPWFoundation/.headers/ -I.headers -o testobjectivehttpd testobjectivehttpd.m -L ${HOME}/Build/obj -lObjectiveHTTPD -lMPWFoundation -lgnustep-base -L/usr/local/lib/ -lobjc
