print('���� �ʱ�ȭ ����')

headCmd = "cd ../../ADB && "
adbCmd = "adb -s "..device_name.." shell /system/xbin/bstk/su -c rm -rf /data/data/com.kakaogames.umamusume/shared_prefs"
appCmd = headCmd..adbCmd

local f = io.popen(appCmd)
f:close()

print('���� �ʱ�ȭ �Ϸ�!')