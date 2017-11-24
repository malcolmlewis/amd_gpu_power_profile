#   Simple makefile for amd_gpu_power_profile
#
#   Copyright (c) 2017 Malcolm J Lewis <malcolmlewis@opensuse.org>
#
#   License: GPL-2.0
#
#   This program is free software: you can redistribute it and/or modify
#   it under the terms of the GNU General Public License Version 2.0 as
#   published by the Free Software Foundation.
#
#   This program is distributed in the hope that it will be useful,
#   but WITHOUT ANY WARRANTY; without even the implied warranty of
#   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
#   GNU General Public License 2.0 for more details.
#

PREFIX?=/usr
BINDIR?=
DATADIR?=$(PREFIX)/share
FILLUPDIR?=$(DATADIR)/adm/fillup-templates
LIB?=$(PREFIX)/lib
LOCALSTATEDIR?=
MANDIR?=$(DATADIR)/man
SBINDIR?=$(PREFIX)/sbin
SYSCONFDIR?=/etc
SYSCONFIGDIR?=$(SYSCONFDIR)/sysconfig
UDEVRULESDIR?=
UNITDIR?=$(LIB)/systemd/system
RULESFILE?=
SERVICEFILE?=amd_gpu_power_profile.service
SYSCONFFILE?=sysconfig.amd_gpu_power_profile

ifneq ($V,1)
Q ?= @
endif

all:

.PHONY: install
install:
	$Q echo "[Create install directories]"
	$Q mkdir -p $(DESTDIR)$(SBINDIR)
	$Q mkdir -p $(DESTDIR)
	$Q mkdir -p $(DESTDIR)$(UNITDIR)
	$Q echo "[Install script]"
	$Q install -m 0755 amd_gpu_power_profile $(DESTDIR)$(SBINDIR)/
	$Q echo "[Install systemd service file]"
	$Q install -m 0644 $(SERVICEFILE) $(DESTDIR)$(UNITDIR)/
#	$Q echo "[Install sysconfig template]"
#	$Q install -m 0644 $(SYSCONFFILE) $(DESTDIR)$(FILLUPDIR)/

.PHONY:	uninstall
uninstall:
	$Q echo "[Uninstall amd_gpu_power_profile]"
	$Q rm $(DESTDIR)$(SBINDIR)/amd_gpu_power_profile
	$Q rm $(DESTDIR)$(UNITDIR)/$(SERVICEFILE)
#	$Q rm $(DESTDIR)$(FILLUPDIR)/$(SYSCONFFILE)
