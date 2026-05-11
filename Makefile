MATLABROOT = /Applications/MATLAB_R2025b.app
MEXCMD = $(MATLABROOT)/bin/mex
MEXEXT = $(shell $(MATLABROOT)/bin/mexext)

MEXFILES = \
	det2x2.$(MEXEXT) \
	det3x3.$(MEXEXT) \
	ft_getopt.$(MEXEXT) \
	ft_spike_sub_crossx.$(MEXEXT) \
	getpid.$(MEXEXT) \
	inv2x2.$(MEXEXT) \
	inv3x3.$(MEXEXT) \
	meg_leadfield1.$(MEXEXT) \
	mtimes2x2.$(MEXEXT) \
	mtimes3x3.$(MEXEXT) \
	nanmean.$(MEXEXT) \
	nanstd.$(MEXEXT) \
	nansum.$(MEXEXT) \
	nanvar.$(MEXEXT) \
	plgndr.$(MEXEXT) \
	read_16bit.$(MEXEXT) \
	read_24bit.$(MEXEXT) \
	rename.$(MEXEXT) \
	sandwich2x2.$(MEXEXT) \
	sandwich3x3.$(MEXEXT) \
	splint_gh.$(MEXEXT)

GEOMETRYMEXFILES = \
	lmoutr.$(MEXEXT) \
	ltrisect.$(MEXEXT) \
	plinproj.$(MEXEXT) \
	ptriproj.$(MEXEXT) \
	routlm.$(MEXEXT) \
	solid_angle.$(MEXEXT)

CPPMEXFILES = \
	combineClusters.$(MEXEXT)

SPECIALMEXFILES = \
	mxDeserialize_c.$(MEXEXT) \
	mxDeserialize_cpp.$(MEXEXT) \
	mxSerialize_c.$(MEXEXT) \
	mxSerialize_cpp.$(MEXEXT) \
	plgndr.$(MEXEXT) \
	rfbevent.$(MEXEXT)

all: $(MEXFILES) $(GEOMETRYMEXFILES)

$(MEXFILES): %.$(MEXEXT): %.c
	$(MEXCMD) $<

$(CPPMEXFILES): %.$(MEXEXT): %.cpp
	$(MEXCMD) $<

$(GEOMETRYMEXFILES): %.$(MEXEXT): %.c geometry.c geometry.h
	$(MEXCMD) $< geometry.c 

clean:
	rm -f $(MEXFILES) $(GEOMETRYMEXFILES)
