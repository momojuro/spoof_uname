#!/system/bin/sh
#
# Copyright (C) 2025 simonpunk & utkustnr
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.
#


# susfs binary location
SUSFS_BIN="/data/adb/ksu/bin/ksu_susfs"

# define the spoofed kernel's version and build
kernel_version='6.1.129-android14-11-g4cadbfbbe186-ab13408047'
kernel_build='#1 SMP PREEMPT Fri Apr 25 02:03:44 UTC 2025'

$SUSFS_BIN set_uname "$kernel_version" "$kernel_build"
