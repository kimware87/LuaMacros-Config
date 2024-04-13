lmc_minimize() -- Uncomment to Minimize on Launch
lmc_device_set_name ('MacroPad', '12FC3B84');


-- define callback for whole device
lmc_set_handler('MacroPad',function(button, direction)
  if (direction == 1) then return end  -- ignore down
  
  if     (button == 112) then lmc_spawn() -- F1 Launch
  elseif (button == 113) then lmc_spawn() -- F2 Launch 
  elseif (button == 114) then lmc_spawn() -- F3 Launch 
  elseif (button == 115) then lmc_spawn() -- F4 Launch 
  elseif (button == 116) then lmc_spawn() -- F5 Launch 
  
  elseif (button == 192) then lmc_send_keys() -- (`~)
  elseif (button == string.byte('1')) then lmc_send_keys() 
  elseif (button == string.byte('2')) then lmc_send_keys() 
  elseif (button == string.byte('3')) then lmc_send_keys() 
  elseif (button == string.byte('4')) then lmc_send_input() 
  elseif (button == string.byte('5')) then lmc_send_keys() 
  elseif (button == string.byte('6')) then lmc_send_keys() 
  
  elseif (button == string.byte('Q')) then lmc_send_keys()
  elseif (button == string.byte('W')) then lmc_send_keys()
  elseif (button == string.byte('E')) then lmc_send_keys()
  elseif (button == string.byte('R')) then lmc_send_keys()
  elseif (button == string.byte('T')) then lmc_send_keys()
  elseif (button == string.byte('A')) then lmc_send_keys() 
  elseif (button == string.byte('S')) then lmc_send_keys()
  elseif (button == string.byte('D')) then lmc_send_keys()
  elseif (button == string.byte('F')) then lmc_send_keys()
  elseif (button == string.byte('G')) then lmc_send_keys()
  elseif (button == string.byte('Z')) then lmc_send_keys()
  elseif (button == string.byte('X')) then lmc_send_keys()
  elseif (button == string.byte('C')) then lmc_send_keys()
  elseif (button == string.byte('V')) then lmc_send_keys()
  elseif (button == string.byte('B')) then lmc_send_keys()
  
  elseif (button == 32) then lmc_send_keys() -- Space
  elseif (button == 18) then lmc_send_keys() -- Alt
  elseif (button == 20) then lmc_send_keys() -- Capslock
  elseif (button ==  9) then lmc_send_keys() -- Tab
  
  -- elseif (button == string.byte('N')) then lmc_spawn("notepad", "C:\\test.txt")
  -- elseif (button == string.byte('H')) then lmc_send_keys('Hello world')
  else print('Not yet assigned: ' .. button) 
  end
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

-- lmc_say() - Say Text Specified using Text-to-Speech
-- lmc_spawn() - Launch a Application
-- lmc_send_keys('') or ("")  - Send Keystrokes
-- lmc_send_input() - Send Specific Key Scan Code
-- lmc_minimize() -- minimize Luamacros during runtime
-- lmc.minimizeToTray = true - Minimize Luamacros to Tray during runtime
-- lmc_device_set_name ('Logical Name of Device', 'DeviceID'); - Setting Name for Device and specify DeviceID

-- Shortcut Link configure as Luamacros.exe -r Test.lua - This will start LuaMacros, runs the script Test.lua automatically