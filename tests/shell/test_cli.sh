#!/bin/bash

# SPDX-FileCopyrightText: 2024 Henrik Sandklef
#
# SPDX-License-Identifier: GPL-3.0-or-later

lp()
{
    PYTHONPATH=. ./licomp_proprietary/__main__.py $*
    if [ $? -ne 0 ]
    then
        echo "failed: $*"
        exit 1
    fi
}

lp --help
lp --name
lp --version
lp supported-provisionings
lp supported-usecases
lp supported-licenses
lp verify -il MIT -ol Proprietary-linked
