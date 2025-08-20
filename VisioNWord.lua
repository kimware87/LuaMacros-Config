lmc_minimize()
lmc_device_set_name ('MacroPad', '22EE973'); -- Royal Kludge B20
lmc_device_set_name ('FullPad', '2D22E3A'); -- Royal Kuldge RK100 2.4G
lmc_device_set_name ('FullPad', '7E4724A'); -- Royal Kuldge RK100 Wired
lmc_say('Drawing Profile');

-- define callback for whole device
lmc_set_handler('MacroPad',function(button, direction)
  if (direction == 1) then return end  -- ignore down
  
  if (button == 112) then lmc_spawn("") -- F1 
  elseif (button == 113) then lmc_spawn("") -- F2 Launch 
  elseif (button == 114) then lmc_spawn("") -- F3 Launch 
  elseif (button == 115) then lmc_spawn("") -- F4 Launch 
  elseif (button == 116) then lmc_spawn("E:\\PortableApps\\AutoHotkeyPortable\\Executables\\Exec V2\\Resizer.exe") -- F5 Launch Shuffle Function
  
  elseif (button == string.byte('1')) then lmc_send_keys("^1") -- Visio Pointer Tool
  elseif (button == string.byte('2')) then lmc_send_keys("^8") -- Visio Rectangle Tool
  elseif (button == string.byte('3')) then lmc_send_keys("^6") -- Visio Line Tool
  elseif (button == string.byte('4')) then lmc_send_keys("^2") -- Visio Text Tool
  elseif (button == string.byte('5')) then lmc_send_keys("{F3}") --  Visio Format Shape
  elseif (button == string.byte('6')) then lmc_send_keys() --
  
  elseif (button == string.byte('Q')) then lmc_send_keys("#+{LEFT}") -- Move Active Windows Left or Right
  elseif (button == string.byte('W')) then lmc_send_keys("%NPP") -- Visio Insert Image
  elseif (button == string.byte('E')) then lmc_send_keys("^r") -- Visio Rotate Shape Right
  elseif (button == string.byte('R')) then lmc_spawn("E:\\PortableApps\\AutoHotkeyPortable\\Executables\\Exec V2\\Replace Text Hidden.exe")
  elseif (button == string.byte('T')) then lmc_send_keys("+{F10}ef") -- Word Change Picture
  elseif (button == string.byte('A')) then lmc_send_keys("^a") -- Select All
  elseif (button == string.byte('S')) then lmc_send_keys("^s") -- Save
  elseif (button == string.byte('D')) then lmc_send_keys("{DEL}") -- Delete
  elseif (button == string.byte('F')) then lmc_send_keys("^f") -- Find
  elseif (button == string.byte('G')) then lmc_send_keys("^d") -- Visio Duplicate Shape
  elseif (button == string.byte('Z')) then lmc_send_keys("^z") -- Undo
  elseif (button == string.byte('X')) then lmc_send_keys("^x") -- Cut
  elseif (button == string.byte('C')) then lmc_send_keys("^c") -- Copy
  elseif (button == string.byte('V')) then lmc_send_keys("^v") -- Pastes
  elseif (button == string.byte('Z')) then lmc_send_keys("^z") -- Undo
  elseif (button == string.byte('B')) then lmc_send_keys("^%v") -- Paste Special 
  
  elseif (button == 32) then lmc_send_keys("^k^v") -- Space Insert Hyperlink
  elseif (button == 18) then lmc_send_keys('<Insert Site Address>') -- Alt
  elseif (button == 20) then lmc_send_keys() -- Capslock 
  elseif (button ==  9) then lmc_send_keys("^+.") -- Tab Visio Increase Font Size
  
  
  -- elseif (button == string.byte('N')) then lmc_spawn("notepad", "C:\\test.txt")
  -- elseif (button == string.byte('H')) then lmc_send_keys('Hello world')
  else print('Not yet assigned: ' .. button) 
  end
end)


-- https://learn.microsoft.com/en-us/windows/win32/inputdev/virtual-key-codes
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

-- lmc_spawn() - Launch a Application
-- lmc_send_keys('') or ("")  - Send Keystrokes
-- lmc_send_input() - Send Specific Key Scan Code
-- lmc_minimize() -- minimize Luamacros during runtime
-- lmc.minimizeToTray = true - Minimize Luamacros to Tray during runtime
-- lmc_device_set_name ('Logical Name of Device', 'DeviceID'); - Setting Name for Device and specify DeviceID

-- Shortcut Link configure as Luamacros.exe -r Test.lua - This will start LuaMacros, runs the script Test.lua automaticallys
