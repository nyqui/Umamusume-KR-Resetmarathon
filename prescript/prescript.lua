-- ���α׷� ����� ��ó�� ��ũ��Ʈ
MAIN_FLAG = 0
ALARM_FLAG = 0
STR_NAME_ID = 'name_id'
STR_NUM_ID = 'num_id'
STR_NAME = 'name'
STR_NUM = 'num'
IS_OK = true
SAFELOCK = 0
START_ERR_MESSAGE_SESSION = "��罺�ð� �������ּ���."
START_ERR_MESSAGE_TETHER = "�״��� ���� �������ּ���."
START_ERR_MESSAGE_VAR = "�����ɼ��� ��� �����մϴ�."
START_ERR_MESSAGE_SCORE = "��ǥ���� Ȯ�� �ʿ�"
START_ERR_MESSAGE_END = "�̹� ������ ��� �����߽��ϴ�. ������ Ȯ�����ּ���."
ALARM_MESSAGE = "��ǥ ����! \n�������� �Ϸ�Ǿ����ϴ�"
SAFELOCK_MESSAGE = "SAFELOCK, ������� �ʿ�"

UMA_LIST = {
	'������������',
	'��影',
	'����Ƽ',
	'�׷�������',
	'���̽�����ó',
	'�Ͻó��ö��',
	'���̽�����',
	'����ī',
	'�����䰡����',
	'���Ϸ�������ī',
	'��������ſ�',
	'���̿ī��',
	'����ũ��',
	'����Ʈ����',
	'�������ũ',
	'���̳׽�����',
	'�����Ŀ',
	'������ĸ',
	'���ܵ����Ļ�',
	'����Ƽ��',
	'ī�ø��丮��',
	'ŰŸ���',
	'Ÿ����ũ�ν�',
	'���ī�����̿�',
	'Ʈ���ͺ�',
	'���θ��',
	'�Ͼ�ī��Ÿ�'
}


NUM_LIST = {
	'0',
	'1',
	'2',
	'3',
	'4',
	'5'
}

SCORE_LIST = {
	'0',
	'1',
	'2',
	'3',
	'4',
	'5',
	'6',
	'7',
	'8',
	'9',
	'10'
}

STR_MUSTFIND_LIST = 'mustfind_list'
STR_SELECTFIND_LIST = 'selectfind_list'
STR_SCOREFIND_LIST = 'scorefind_list'

STR_VAR_MUSTFIND = '_mustselect'
STR_VAR_SELECTFIND = '_selectfind'
STR_VAR_SCOREFIND = '_scorefind'

LIST = {mustfind_list={}, selectfind_list={}, scorefind_list={}}

GUIAddTab('����')
GUIAddTab('�����')
GUIAddTab('����')
GUIAddTab('����')
GUIAddTab('HELP')
GUIAddTab('Editor')


GUI_ETC_LIST = {}



-- ########################## ����
GUISetCurTab('����')

GUIAddText(5, 0, 340, -1, '��罺�ð� �����մϴ�. ��罺�� ADB ������ ���ּ���.')

x, y, w, h = 5, 40, 350, 180
GUIAddGroup(x, y, w, h, 'ADB ����')

GUIAddText(x, y + 10, 340, -1, 'ADB ��Ʈ�� Ȯ�� �� ��Ȯ�� �Է����ּ���')

GUIAddEdit(x, y + 30, 240, -1, '', nil, 'adb_port')
GUIAddButton(x + 240, y + 30, -1, -1,'Device ����', 'button_connect_device')

GUIAddButton(x, y+ 60, -1, -1, 'STOP/�������', 'button_stop')
GUIAddButton(x + 140, y + 60, -1, -1, '�����ʱ�ȭ', 'button_reset_server', 'reset_var')
TEST_CONNECT_ID = GUIAddButton(x+240, y + 60, -1, -1, '�׽�Ʈ(â����)', 'button_test_connect', 'test_connect_var')

GUIAddText(x, y + 90, 340, -1, '�ܺθ� ��� ADB ������ Ȯ�� �� ��Ȯ�� �Է����ּ���')
GUIAddEdit(x, y + 120, 240, -1, '', nil, 'net_device')
GUIAddButton(x + 240, y + 120, -1, -1,'��Ʈ��ũ ����', 'button_connect_net')

GUIAddText(x, y + 150, 340, -1, '�� �߿�!!! - �Ϲ� ���� [�νĴ��]->[����]->[��� â ����] Ȯ��')

table.insert(GUI_ETC_LIST, TEST_CONNECT_ID)

x, y, w, h = 5, 250, 350, 70
GUIAddGroup(x, y, w, h, '�Խ�Ʈ �ҷ����� (���� ����)')
GUIAddText(x, y+10, 340, -1, '��) 5028_220101_010101_010')
GUIAddEdit(x, y+40, 220, -1, '', nil, 'load_name')
GUIAddButton(x+230, y+40, -1, -1, '�ҷ�����', 'button_load', 'load_var')




-- ########################## �����
GUISetCurTab('�����')

GUIAddText(5, 0, -1, -1, '�츶������ �������� ')

x, y, w, h = 5, 40, 350, 80
GUIAddGroup(x, y, w, h, '�����ɼ�')

MAINRULE_ID_0 = GUIAddRadio(x + 20, y + 10, -1, -1, '���� ', 'radio_mainrule', '_mainrule')
MAINRULE_ID_1 = GUIAddRadio(x + 120, y + 10, -1, -1, '���� ', 'radio_mainrule')

GUIAddButton(x + 200, y + 10, -1, -1, 'STOP/�������', 'button_stop')

GUIAddText(x, y + 35, -1, -1, '�����˸� ����')
ALARM_FLAG = 1
_alarm = 1
ALARM_ID_0 = GUIAddRadio(x + 20, y + 60, -1, -1, '�޼����˾� ', 'radio_alarm', '_alarm')
ALARM_ID_1 = GUIAddRadio(x + 120, y + 60, -1, -1, '5�ʾ˶� ', 'radio_alarm')
ALARM_ID_2 = GUIAddRadio(x + 200, y + 60, -1, -1, '5�ʾ˶�+�޼����˾� ', 'radio_alarm')

table.insert(GUI_ETC_LIST, MAINRULE_ID_0)
table.insert(GUI_ETC_LIST, MAINRULE_ID_1)
table.insert(GUI_ETC_LIST,ALARM_ID_0)
table.insert(GUI_ETC_LIST,ALARM_ID_1)
table.insert(GUI_ETC_LIST,ALARM_ID_2)



must_option_num = 3
interval_size = 25
x, y, w, h = 5, 150, 350, 60 + must_option_num * interval_size + 20
GUIAddGroup(x, y, w, h, '���Կɼ�')
GUIAddText(x + 10, y + 10, -1, -1, '�ݵ�� ���Խ�Ű���� �ϴ� ī�带 �����մϴ�.')
GUIAddText(x + 10, y + 30, -1, -1, '�̴� �Խ�Ʈ ������ ��ũ���� ���� ������ �˴ϴ�.')
GUIAddText(x + 10, y + 50, -1, -1, '��� �������� ������ �׻� ����˴ϴ�.')

head_y=50
for i=1,must_option_num,1
do
	plus_y = interval_size * i
	tmp_var_name = STR_VAR_MUSTFIND..'name'..tostring(i)
	tmp_var_num = STR_VAR_MUSTFIND..'num'..tostring(i)
	
	tmp_id_1 = GUIAddCombo(x + 10, y + head_y + plus_y, 150, -1, UMA_LIST, 'combo_mustSelect_name', tmp_var_name)
	tmp_id_2 = GUIAddCombo(x + 200, y + head_y + plus_y, -1, -1, NUM_LIST, 'combo_mustSelect_num', tmp_var_num)
	table.insert(LIST[STR_MUSTFIND_LIST], {[STR_NAME_ID]=tmp_id_1,[STR_NUM_ID]=tmp_id_2})
	GUIAddText(x + 170, y + head_y + plus_y, -1, -1, '����')
end


-- ########################## ����

GUISetCurTab('����')

GUIAddText(5, 0, -1, -1, '���ϴ� ī�带 �����մϴ�. ')
GUIAddText(5, 20, -1, -1, '������ ī�尡 ��� ������ �ߴ��մϴ�. ')

select_option_num = 8
interval_size = 25
x, y, w, h = 5, 60, 350, 20+select_option_num*interval_size+20
GUIAddGroup(x, y, w, h, '���ÿɼ�')

head_y = 0
for i=1,select_option_num,1
do
	plus_y = interval_size * i
	tmp_var_name = STR_VAR_SELECTFIND..'name'..tostring(i)
	tmp_var_num = STR_VAR_SELECTFIND..'num'..tostring(i)
	tmp_id_1 = GUIAddCombo(x + 10, y + head_y + plus_y, 150, -1, UMA_LIST, 'combo_select_name', tmp_var_name)
	tmp_id_2 = GUIAddCombo(x + 200, y + head_y + plus_y, -1, -1, NUM_LIST, 'combo_select_num', tmp_var_num)
	table.insert(LIST[STR_SELECTFIND_LIST],{[STR_NAME_ID]=tmp_id_1,[STR_NUM_ID]=tmp_id_2})
	GUIAddText(x + 170, y + head_y + plus_y, -1, -1, '����')
end


-- ########################## ����

GUISetCurTab('����')
GUIAddText(5, 0, -1, -1, 'ī�庰�� ������ �����մϴ�.')
GUIAddText(5, 20, -1, -1, '������ ���� ��ǥ������ ������ �ߴ��մϴ�. ')
GUIAddText(5, 40, -1, -1, '(������������ ī��� 0��, ������ ���)')

GUIAddText(5, 70, -1, -1, '��ǥ����')
SCORE_ID = GUIAddEdit(70, 70, 60, -1, '0', nil, 'SCOREGOAL')
SCORE_CONFIRM_ID = GUIAddButton(130, 70, -1, -1, 'Ȯ��', 'button_confirm')
SCORE_EDIT_ID = GUIAddButton(180, 70, -1, -1, '����', 'button_edit')


score_option_num = 9
interval_size = 20
x, y, w, h = 5, 110, 350, 5+score_option_num*interval_size+20
GUIAddGroup(x, y, w, h, '���ÿɼ�')

head_y = 0
for i=1,score_option_num,1
do
	plus_y = interval_size * i
	tmp_var_name = STR_VAR_SCOREFIND..'name'..tostring(i)
	tmp_var_num = STR_VAR_SCOREFIND..'num'..tostring(i)
	tmp_id_1 = GUIAddCombo(x + 10, y + head_y + plus_y, 150, -1, UMA_LIST, 'combo_score_name', tmp_var_name)
	tmp_id_2 = GUIAddEdit(x + 200, y + head_y + plus_y, -1, -1, '0', 'edit_score_num', tmp_var_num)
	table.insert(LIST[STR_SCOREFIND_LIST], {[STR_NAME_ID]=tmp_id_1,[STR_NUM_ID]=tmp_id_2})
	GUIAddText(x + 170, y + head_y + plus_y, -1, -1, '����')
end


-- ########################## HELP

GUISetCurTab('HELP')
GUIAddText(5, 0, 350, -1, 'FAQ1: ��罺���� ������ �ȵſ�!')
GUIAddText(5, 20, 350, -1, '--> ��罺���� �������� ADB ������ ���ּ���.')
GUIAddText(5, 40, 350, -1, '--> ���� �����ִٸ� PC ����� ���ּ���.')

GUIAddText(5, 70, 350, -1, 'FAQ2: ��ũ�ΰ� �����µ��� ��ư������ �ȵſ�!')
GUIAddText(5, 90, 350, -1, '--> ����� ���� "STOP/�������" �����ּ���.')

GUIAddText(5, 120, 350, -1, 'FAQ3: ��ũ������ ��� ����ǳ���?')
GUIAddText(5, 140, 350, -1, '--> Uma������ SavedScreenshot�� �����ø�')
GUIAddText(5, 160, 350, -1, '--> ����/Screenshot/Uma �� ����Ǹ�')
GUIAddText(5, 180, 350, -1, '--> ��ũ���� ���������� ������ �����ϴ�.')
GUIAddText(5, 200, 350, -1, '--> ����/Screenshot/Uma/�����ó�¥/�����ó�¥�ð�.png')

GUIAddText(5, 230, 350, -1, 'FAQ4: �ҷ����Ⱑ �ȵſ�!')
GUIAddText(5, 250, 350, -1, '--> ������ ��罺���� �����̸��� device��� ������ Ȯ��')
GUIAddText(5, 270, 350, -1, '--> ���ϸ� ��) 8200_220624_071427_516')
GUIAddText(5, 290, 350, -1, '--> ������ �����ߴ� ��罺�� �������� ����')




-- ########################## EDITOR

GUISetCurTab('Editor')
GUIAddText(5, 0, 150, -1, 'made by Qert')
GUIAddText(5, 30, -1, -1, '�������̰ų� ������� ������ ������ ���� �� ���� ����')
GUIAddText(5, 60, -1, -1, 'Edited by...')
GUIAddText(5, 80, -1, -1, 'ADD_YOUR_NAME        ')
GUIAddText(5, 100, -1, -1, 'ADD_YOUR_NAME        ')
GUIAddText(5, 120, -1, -1, 'ADD_YOUR_NAME        ')



GUIUpdate()
GUIShow()

GUISetCurTab('����')


-- ######################### ��Ȱ��ȭ GUI ����
function LIST_enable(constlist, bool)
	if constlist == STR_SCOREFIND_LIST
	then
		GUIItemEnable(SCORE_ID, bool)
	end
	for k, v in pairs(LIST[constlist])
	do	
		GUIItemEnable(LIST[constlist][k][STR_NAME_ID], bool)
		GUIItemEnable(LIST[constlist][k][STR_NUM_ID], bool)
	end	
end

function GUI_enable(bool)
	
	for k, v in pairs(GUI_ETC_LIST)
	do
		GUIItemEnable(v, bool)
	end
	
	LIST_enable(STR_MUSTFIND_LIST, bool)
	LIST_enable(STR_SELECTFIND_LIST, bool)
end

LIST_enable(STR_SCOREFIND_LIST, false)

function initialize_list(constlist, constvar)
	
	for k, v in pairs(LIST[constlist])
	do	
		v_name = constvar..'name'..tostring(k)
		v_num = constvar..'num'..tostring(k)
		LIST[constlist][k][STR_NAME] = _G[v_name]
		LIST[constlist][k][STR_NUM] = _G[v_num]
	end	
end


UMA_LIST[999] = 'Ȯ�ξȵ�ī��'

initialize_list(STR_MUSTFIND_LIST, STR_VAR_MUSTFIND)
initialize_list(STR_SELECTFIND_LIST, STR_VAR_SELECTFIND)
initialize_list(STR_SCOREFIND_LIST, STR_VAR_SCOREFIND)

GUIItemEnable(device_combo_id, false)




-- ############################## Functions
function button_reset_server(button_id)
	
	headCmd = "cd ADB && "
	adbCmd = 'adb kill-server'
	appCmd = headCmd..adbCmd
	
	print('ADB ���� ����')
	
	local f = io.popen(appCmd)
	f:close()
	
end


function button_connect_device(button_id)
	
	if adb_port ~= ''
	then
		target_port = adb_port
		headCmd = "cd ADB && adb connect 127.0.0.1:"..target_port.." &&"
		adbCmd = 'adb devices -l'
		device_name = "127.0.0.1:"..target_port..""

		appCmd = headCmd..adbCmd
		
		print(adb_port)
		
		local f = io.popen(appCmd)

		for line in f:lines()do 
			print(line)
		end
	else
		print("��罺�� ADB ��Ʈ�� �Էµ��� �ʾҽ��ϴ�. ��Ʈ�� �Է����ּ���.")
		return 0
	end

end


function button_connect_net(button_id)
	
	if net_device ~=''
	then
		net_target = net_device
		net_headCmd = "cd ADB && adb connect "..net_target
		net_adbCmd = 'adb devices -l'

		appCmd = net_headCmd..net_adbCmd
		
		print(net_device)
		
		local f = io.popen(appCmd)

		for line in f:lines()do 
			print(line)
		end
	else
		print("����Ʈ�� ������ �Էµ��� �ʾҽ��ϴ�. ��Ʈ�� �Է����ּ���.")
		return 0
	end
end


function button_test_connect(button_id)
print(adb_port)
	if adb_port	== ''
		then
		print("��罺�� ADB ��Ʈ�� �Էµ��� �ʾҽ��ϴ�. ��Ʈ�� �Է����ּ���.")
		return 0
	else
		headCmd = "cd ADB && "
		adbCmd = "adb -s "..device_name.." shell am start -n com.android.settings/com.android.settings.Settings"
		appCmd = headCmd..adbCmd
		
		local f = io.popen(appCmd)

		f:close()
	end
end

function button_load(button_id)
		
	saved_account = load_name
	print(load_name)
	account_device = 0
	
	for value in string.gmatch(saved_account, "[^_]+")
	do
		account_device = value
		break
	end
	
	print(account_device)
	if target_port == nil
	then
		MessageBox("��罺�� ADB ������ Ȯ�����ּ���.")
		return 0
	end
	
	
	if target_port ~= account_device
	then
		print("����! ���� ADB ��Ʈ�� ���� ADB ��Ʈ�� �ٸ��ϴ�.\n������ �ȵǾ��ٸ� ������ �����͸� ������ ������ �´��� Ȯ���غ�����.")
	end	
	
	
	-- �� ����

	headCmd = "cd ADB && "
	adbCmd = "adb -s "..device_name.." shell /system/xbin/bstk/su -c am force-stop com.kakaogames.umamusume"
	appCmd = headCmd..adbCmd

	local f = io.popen(appCmd)
	f:close()
	
	-- ���� �Խ�Ʈ ����
	
	print(device_name)
	headCmd = "cd ADB && "
	adbCmd = "adb -s "..device_name.." shell /system/xbin/bstk/su -c rm -rf /data/data/com.kakaogames.umamusume/shared_prefs"
	appCmd = headCmd..adbCmd
	
	local f = io.popen(appCmd)
	f:close()

	-- ����� �Խ�Ʈ ����
	
	headCmd = "cd ADB && "
	adbCmd = "adb -s "..device_name.." shell /system/xbin/bstk/su -c cp -a -f /data/data/com.kakaogames.umamusume/account/"..saved_account.." /data/data/com.kakaogames.umamusume/shared_prefs"
	appCmd = headCmd..adbCmd
	
	local f = io.popen(appCmd)
	f:close()
	
	Stop()
	MessageBox("�Խ�Ʈ ���� ������ �õ��߽��ϴ�. ���� �Ѽ� Ȯ�����ּ���.\n������ �ȵ��� ��� ����̽� Ȯ�ιٶ�.")
end


function radio_mainrule(radio_id)
	
	MAIN_FLAG = tonumber(_mainrule)
	print(MAIN_FLAG)
	
end


function radio_alarm(radio_id)
	
	ALARM_FLAG = tonumber(_alarm)
	print(ALARM_FLAG)
	
end


function button_stop(button_id)
	
	Stop()
	SAFELOCK = 0
	GUI_enable(true)
	
end


function combo_mustSelect_name(combo_id)
	
	for k, v in pairs(LIST[STR_MUSTFIND_LIST])
	do
		if LIST[STR_MUSTFIND_LIST][k][STR_NAME_ID] == combo_id
		then
			local v = STR_VAR_MUSTFIND..'name'..tostring(k)
			LIST[STR_MUSTFIND_LIST][k][STR_NAME] = _G[v]
			break
		end
	end
end


function combo_mustSelect_num(combo_id)

	for k, v in pairs(LIST[STR_MUSTFIND_LIST])
	do
		if LIST[STR_MUSTFIND_LIST][k][STR_NUM_ID] == combo_id
		then
			local v = STR_VAR_MUSTFIND..'num'..tostring(k)
			LIST[STR_MUSTFIND_LIST][k][STR_NUM] = _G[v]
			break
		end
	end
end


function combo_select_name(combo_id)
	
	for k, v in pairs(LIST[STR_SELECTFIND_LIST])
	do
		if LIST[STR_SELECTFIND_LIST][k][STR_NAME_ID] == combo_id
		then
			local v = STR_VAR_SELECTFIND..'name'..tostring(k)
			LIST[STR_SELECTFIND_LIST][k][STR_NAME] = _G[v]
			break
		end
	end
end


function combo_select_num(combo_id)


	for k, v in pairs(LIST[STR_SELECTFIND_LIST])
	do
		if LIST[STR_SELECTFIND_LIST][k][STR_NUM_ID] == combo_id
		then
			local v = STR_VAR_SELECTFIND..'num'..tostring(k)
			LIST[STR_SELECTFIND_LIST][k][STR_NUM] = _G[v]
			break
		end
	end

end


function button_confirm(button_id)
	
	IS_OK = true
	

	if tonumber(SCOREGOAL) == nil
	then
		message = '��ǥ���� Ȯ���ʿ�(������ ���)'
		MessageBox(message)
		IS_OK = false
	end
	
	for k, v in pairs(LIST[STR_SCOREFIND_LIST])
	do
		if (LIST[STR_SCOREFIND_LIST][k][STR_NUM] == nil) or (LIST[STR_SCOREFIND_LIST][k][STR_NUM] == '')
		then
			GUIItemUpdate(LIST[STR_SCOREFIND_LIST][k][STR_NUM_ID], '0')
			LIST[STR_SCOREFIND_LIST][k][STR_NUM] = '0'
		end
		
		if(tonumber(LIST[STR_SCOREFIND_LIST][k][STR_NUM])) ~= nil
		then
			if math.floor(tonumber(LIST[STR_SCOREFIND_LIST][k][STR_NUM])) ~= tonumber(LIST[STR_SCOREFIND_LIST][k][STR_NUM]) then 
				IS_OK = false
			end
		else
			message = tostring(k)..'��° ������ Ȯ���ʿ�(������ ���)'
			MessageBox(message)
			IS_OK = false
		end

	end
	
	if IS_OK == true then 
		LIST_enable(STR_SCOREFIND_LIST,false)
	else
		LIST_enable(STR_SCOREFIND_LIST,true)
	end
	
	GUIUpdate()
	GUISetCurTab('����')
	
end


function button_edit(button_id)
	if (IsStop() == '1' or IsStop() == 1)
	then
		LIST_enable(STR_SCOREFIND_LIST, true)
		IS_OK = false
	else
		LIST_enable(STR_SCOREFIND_LIST, false)
	end
	

end


function combo_score_name(combo_id)
	for k, v in pairs(LIST[STR_SCOREFIND_LIST])
	do
		if LIST[STR_SCOREFIND_LIST][k][STR_NAME_ID] == combo_id
		then
			local v = STR_VAR_SCOREFIND..'name'..tostring(k)
			LIST[STR_SCOREFIND_LIST][k][STR_NAME] = _G[v]
			break
		end
	end
end


function edit_score_num(edit_id)

	for k, v in pairs(LIST[STR_SCOREFIND_LIST])
	do
		if LIST[STR_SCOREFIND_LIST][k][STR_NUM_ID] == edit_id
		then
			local v = STR_VAR_SCOREFIND..'num'..tostring(k)
			LIST[STR_SCOREFIND_LIST][k][STR_NUM] = _G[v]
			break
		end
	end
end