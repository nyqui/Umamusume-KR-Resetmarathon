--���ǻ���!!!!!!
--combo���� �� index�� ���� UMA_LIST�� index�� 1 ���̳�

-- combo	:: 0 ~ N-1
-- UMA_LIST :: 1 ~ N

for k, img in pairs(GROUPS)
do
	EnableImage(false, img)
end

print("_____________________________")

-- ���ǰ� ����Ǿ��°�
if device_name == nil then 
	Stop()
	MessageBox(START_ERR_MESSAGE_SESSION)
end

local date_now = os.date('*t')
print("���� �ð� : "..tostring(date_now.hour))
if date_now.hour == 4 then
	if date_now.min > 55 then
		print("��¥����ð��� ����, 5�а� ����մϴ�.")
		Sleep(1000*60*5)
		Sleep(1000*30)
	end
end

found_uma_list = {}
print("����Ƚ�� : "..tostring(COUNT))
print("<<�ʼ���ǥ>>")

for k, v in pairs(LIST[STR_MUSTFIND_LIST]) do
	name_idx = LIST[STR_MUSTFIND_LIST][k][STR_NAME]
	name_idx = name_idx + 1
	name_n = LIST[STR_MUSTFIND_LIST][k][STR_NUM]
	
	if name_idx > 1 then
		print(tostring(UMA_LIST[name_idx]).." : "..tostring(name_n))
	end
end

print("<<���ø�ǥ>>")

for k, v in pairs(LIST[STR_SELECTFIND_LIST]) do
	name_idx = LIST[STR_SELECTFIND_LIST][k][STR_NAME]
	name_idx = name_idx + 1
	name_n = LIST[STR_SELECTFIND_LIST][k][STR_NUM]
	
	if name_idx > 1 then
		print(tostring(UMA_LIST[name_idx]).." : "..tostring(name_n))
	end
end

print("<<������ǥ>>")
if  tonumber(SCOREGOAL) == 0 then
	print("���� ��ǥ�� �������� �ʽ��ϴ�")
else
	print("��ǥ���� : "..tostring(SCOREGOAL))
end

for k, v in pairs(LIST[STR_SCOREFIND_LIST]) do
	name_idx = LIST[STR_SCOREFIND_LIST][k][STR_NAME]
	name_idx = name_idx + 1
	name_n = LIST[STR_SCOREFIND_LIST][k][STR_NUM]
	
	if name_idx > 1 then
		print(tostring(UMA_LIST[name_idx]).." : "..tostring(name_n))
	end
end

print([[_____________]])

-- �����ߴ°�?
if device_name == nil then 
	Stop()
	MessageBox(START_ERR_MESSAGE_CONNECT)
end

-- FLAG�� �ִ°�?
if MAIN_FLAG == nil or ALARM_FLAG == nil or MAIN_FLAG == -1 or ALARM_FLAG == -1 then
	Stop()
	MessageBox("START_ERR_MESSAGE_VAR")
end	
	
-- �̹� ������ �����ƴ°�?
SUCCESS = false
SCREENSHOT_FLAG = false

print("MAIN_FLAG = "..tostring(MAIN_FLAG))
print("SELECT : ".. tostring(calculate_selectfind()[1]))
print("MUSTF : " .. tostring(calculate_mustfind()[1]))
print("SCORE : " .. tostring(calculate_score()[1]))

if calculate_mustfind()[1] == true
then
	SCREENSHOT_FLAG = true
	if MAIN_FLAG == 0 then
		if calculate_selectfind()[1] == true then
			SUCCESS = true
		end
	elseif MAIN_FLAG == 1 then
		if calculate_score()[1] == true then
			SUCCESS = true
		end
	end
end