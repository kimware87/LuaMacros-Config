lmc_minimize()
lmc_device_set_name ('MacroPad', '2AAE2914'); -- Royal Kludge B20
lmc_device_set_name ('FullPad', '3518E24D'); -- Royal Kuldge RK100 2.4G
lmc_device_set_name ('FullPad', '3518E24D'); -- Royal Kuldge RK100 Wired
lmc_say('General Profile');

-- define callback for whole device
lmc_set_handler('MacroPad',function(button, direction)
  if (direction == 1) then return end  -- ignore down
  
  if (button == 112)     then lmc_spawn("E:\\PortableApps\\AutoHotkeyPortable\\Executables\\AutoComplete.exe") -- F1 Launch AHK AutoComplete
  elseif (button == 113) then lmc_spawn("E:\\PortableApps\\AutoHotkeyPortable\\Executables\\Exec V2\\Overdue Invoice Reminder.exe") -- F2 Launch Overdue Invoice Reminder
  elseif (button == 114) then lmc_spawn("E:\\PortableApps\\AutoHotkeyPortable\\Executables\\Exec V2\\Invoice Reminder.exe") -- F3 Launch Invoice Reminder
  elseif (button == 115) then lmc_spawn("E:\\PortableApps\\AutoHotkeyPortable\\Ahk2Exe.exe") -- F4 Launch AHKtoExe
  elseif (button == 116) then lmc_spawn("E:\\PortableApps\\AutoHotkeyPortable\\Executables\\Luamacros Profiles\\Zoom.exe") -- F5 Launch Zoom Luamacros Profile
  
  elseif (button == 192) then lmc_send_keys("^`") -- Ditoo Clipboard
  elseif (button == string.byte('1')) then lmc_send_keys("#%1") -- 
  elseif (button == string.byte('2')) then lmc_send_keys("#%2") -- 
  elseif (button == string.byte('3')) then lmc_send_keys("#%3") -- 
  elseif (button == string.byte('4')) then lmc_send_keys("#%4") --
  elseif (button == string.byte('5')) then lmc_send_keys("#%5") --  
  elseif (button == string.byte('6')) then lmc_send_keys("#%6") --
  
  elseif (button == string.byte('Q')) then lmc_send_keys("#+{LEFT}") -- Move Active Windows Left or Right
  elseif (button == string.byte('W')) then lmc_send_keys("^w") -- Close Current Browser Tab
  elseif (button == string.byte('E')) then lmc_send_keys("^e") -- Open Query in Browser and File Manager 
  elseif (button == string.byte('R')) then lmc_send_keys("^r") -- Reload Current Page Browser 
  elseif (button == string.byte('T')) then lmc_send_keys("^t") -- Open New Browser Tab
  elseif (button == string.byte('A')) then lmc_send_keys("^a") -- Select All
  elseif (button == string.byte('S')) then lmc_send_keys("^s") -- Save
  elseif (button == string.byte('D')) then lmc_send_keys("{DEL}") -- Delete
  elseif (button == string.byte('F')) then lmc_send_keys("^f") -- Find
  elseif (button == string.byte('G')) then lmc_send_keys("^g") -- Next Item on Find Result
  elseif (button == string.byte('Z')) then lmc_send_keys("^z") -- Undo
  elseif (button == string.byte('X')) then lmc_send_keys("^x") -- Cut
  elseif (button == string.byte('C')) then lmc_send_keys("^c") -- Copy
  elseif (button == string.byte('V')) then lmc_send_keys("^v") -- Paste
  elseif (button == string.byte('Z')) then lmc_send_keys("^z") -- Undo
  elseif (button == string.byte('B')) then lmc_send_keys("#v") -- Windows Clipboard
  elseif (button == string.byte('M')) then lmc_send_keys("{INS}") -- Insert
  
  elseif (button == 32) then lmc_send_keys("^k^v") -- Space - Insert Hyperlink
  elseif (button == 18) then lmc_send_keys() -- Alt
  elseif (button == 20) then lmc_send_keys() -- Capslock 
  elseif (button ==  9) then lmc_send_keys("^{TAB}") --Tab
  elseif (button == 27) then lmc_send_keys("{ESC}") -- Esc
  
  
  -- elseif (button == string.byte('N')) then lmc_spawn("notepad", "C:\\test.txt")
  -- elseif (button == string.byte('H')) then lmc_send_keys('Hello world')
  else print('Not yet assigned: ' .. button) 
  end
end)


lmc_set_handler('FullPad',117,1,function()
  lmc_send_input(0xB2,0,0) -- F6 Stop Media
end)

lmc_set_handler('FullPad',118,1,function()
  lmc_send_input(0xB1,0,0) -- F7 Previous Track
end)

lmc_set_handler('FullPad',119,1,function()
  lmc_send_input(0xB3,0,0) -- F8 Play / Pause Media
end)

lmc_set_handler('FullPad',120,1,function()
  lmc_send_input(0xB0,0,0) -- F9 Next Track
end)

lmc_set_handler('FullPad',121,1,function()
  lmc_send_input(0xAD,0,0) -- F10 Mute Media
end)

lmc_set_handler('FullPad',122,1,function()
  lmc_send_input(0xAE,0,0) -- F11 Volume Down
end)

lmc_set_handler('FullPad',123,1,function()
  lmc_send_input(0xAF,0,0) -- F12 Volume Up
end)


-- ^ = Control
-- % = Alt
-- + = Shift
-- # = Win
-- & = Tab
-- ~ = Enter

-- Refer to these keys by surrounding them with curly braces. For example, {F3} sends the F3 key.
-- BKSP, BS, BACKSPACE
-- BREAK
-- CAPSLOCK
-- CLEAR
-- DEL
-- DELETE
-- DOWN
-- END
-- ENTER
-- ESC
-- ESCAPE
-- F1, F2, F3, F4, F5, F6, F7, F8, F9, F10, F11, F12, F13, F14, F15, F16, F17, F18, F19, F20, F21, F22, F23, F24
-- HELP
-- HOME
-- INS
-- LEFT
-- NUM0, NUM1, NUM2, NUM3, NUM4, NUM5, NUM6, NUM7, NUM8, NUM9
-- NUMDECIMAL
-- NUMDIVIDE
-- NUMLOCK
-- NUMMINUS
-- NUMMULTIPLY
-- NUMPLUS
-- PGDN
-- PGUP
-- PRTSC
-- RIGHT
-- SCROLLLOCK
-- TAB
-- UP

-- lmc_assign_keyboard('Name of Device'); - assigns a name to a keyboard pressed
-- lmc_say() - Say Text Specified using Text-to-Speech
-- lmc_spawn() - Launch a Application
-- lmc_send_keys('') or ("")  - Send Keystrokes
-- lmc_send_input() - Send Specific Key Scan Code
-- lmc_minimize() -- minimize Luamacros during runtime
-- lmc.minimizeToTray = true - Minimize Luamacros to Tray during runtime
-- lmc_device_set_name ('Logical Name of Device', 'DeviceID'); - Setting Name for Device and specify DeviceID

-- Shortcut Link configure as Luamacros.exe -r Test.lua - This will start LuaMacros, runs the script Test.lua automatically
