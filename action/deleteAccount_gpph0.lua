print('���� �ʱ�ȭ ����')

head_command = "cd ../../ADB && "
adb_command = "adb -s "..device_name.." shell /system/xbin/bstk/su -c rm -rf /data/data/com.kakaogames.umamusume/shared_prefs"
command = head_command..adb_command

local f = io.popen(command)
f:close()

print('���� �ʱ�ȭ �Ϸ�!')