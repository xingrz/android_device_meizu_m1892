#!/bin/bash
#
# Copyright (C) 2019-2020 The MoKee Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

set -e

export DEVICE=m1892
export DEVICE_COMMON=sdm845-common
export VENDOR=meizu

export DEVICE_BRINGUP_YEAR=2020

"./../../${VENDOR}/${DEVICE_COMMON}/setup-makefiles.sh" "$@"
