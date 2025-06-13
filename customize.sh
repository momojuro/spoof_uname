if [ ! -d /data/adb/ksu/bin ]; then
	ui_print "'/data/adb/ksu/bin' does not exist, installation aborted."
	rm -rf ${MODPATH}
	exit 1
fi

unzip ${ZIPFILE} -d ${TMPDIR}/susfs

if [ ${ARCH} = "arm64" ]; then
	cp ${TMPDIR}/susfs/tools/ksu_susfs_arm64 /data/adb/ksu/bin/ksu_susfs
else
	echo "Only arm64 is supported!"
	exit 1
fi

chmod 755 /data/adb/ksu/bin/ksu_susfs
chmod 644 ${MODPATH}/boot-completed.sh ${MODPATH}/uninstall.sh

rm -rf ${MODPATH}/tools
rm ${MODPATH}/customize.sh

ui_print "Done."

