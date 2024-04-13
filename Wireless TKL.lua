clear()
lmc_minimize() -- Uncomment to Minimize on Launch
lmc_device_set_name ('TKLPad', '1CBFDA1');

-- define callback for whole device
lmc_set_handler('TKLPad',function(button, direction)
  if (direction == 1) then return end  -- ignore down

  if     (button == 112) then lmc_spawn("E:\\PortableApps\\Notepad++Portable\\Notepad++Portable.exe") -- F1 Launch Notepad++
  elseif (button == 113) then lmc_spawn("E:\\PortableApps\\AutoHotkeyPortable\\AutoHotkeyPortable.exe") -- F2 Launch AutoHotKey
  elseif (button == 114) then lmc_spawn("E:\\PortableApps\\AutoHotkeyPortable\\AutoHotkey2ExePortable.exe") -- F3 Launch AutoHotKey Compiler
  elseif (button == 115) then lmc_spawn("C:\\Users\\Kimhae\\AppData\\Roaming\\Spotify\\Spotify.exe") -- F4 Launch Spotify
  elseif (button == 116) then lmc_send_input(0xB1,0,0) -- F5 Previous Track
  elseif (button == 117) then lmc_send_input(0xB0,0,0) -- F6 Next Track
  elseif (button == 118) then lmc_send_input(0xB3,0,0) -- F7 Pause/Play Media
  elseif (button == 119) then lmc_send_input(0xB2,0,0) -- F8 Stop Media
  elseif (button == 120) then lmc_send_input(0xAD,0,0) -- F9 Mute
  elseif (button == 121) then lmc_send_input(0xAE,0,0) -- F10 Volume Down
  elseif (button == 122) then lmc_send_input(0xAF,0,0) -- F11 Volume Up
  elseif (button == 123) then spawn() -- F12
  
  --Numbers
  -- elseif (button == string.byte('1')) then lmc_send_keys("1")
  -- elseif (button == string.byte('2')) then lmc_send_keys("2")
  -- elseif (button == string.byte('3')) then lmc_send_keys("3")
  -- elseif (button == string.byte('4')) then lmc_send_keys("4")
  -- elseif (button == string.byte('5')) then lmc_send_keys("5")
  -- elseif (button == string.byte('6')) then lmc_send_keys("6")
  -- elseif (button == string.byte('7')) then lmc_send_keys("7")
  -- elseif (button == string.byte('8')) then lmc_send_keys("8")
  -- elseif (button == string.byte('9')) then lmc_send_keys("9")
  -- elseif (button == string.byte('0')) then lmc_send_keys("0")
  
  -- Line 1
  -- elseif (button == string.byte('Q')) then lmc_send_keys("q")
  -- elseif (button == string.byte('W')) then lmc_send_keys("w")
  -- elseif (button == string.byte('E')) then lmc_send_keys("e")
  -- elseif (button == string.byte('R')) then lmc_send_keys("r")
  -- elseif (button == string.byte('T')) then lmc_send_keys("t")
  -- elseif (button == string.byte('Y')) then lmc_send_keys("y")
  -- elseif (button == string.byte('U')) then lmc_send_keys("u")
  -- elseif (button == string.byte('I')) then lmc_send_keys("i")
  -- elseif (button == string.byte('O')) then lmc_send_keys("o")
  -- elseif (button == string.byte('P')) then lmc_send_keys("p")
  
  -- Line 2
  -- elseif (button == string.byte('A')) then lmc_send_keys("a")
  -- elseif (button == string.byte('S')) then lmc_send_keys("s")
  -- elseif (button == string.byte('D')) then lmc_send_keys("d")
  -- elseif (button == string.byte('F')) then lmc_send_keys("f")
  -- elseif (button == string.byte('G')) then lmc_send_keys("g")
  -- elseif (button == string.byte('H')) then lmc_send_keys("h")
  -- elseif (button == string.byte('J')) then lmc_send_keys("j")
  -- elseif (button == string.byte('K')) then lmc_send_keys("k")
  -- elseif (button == string.byte('L')) then lmc_send_keys("l")
  
  -- Line 3
  -- elseif (button == string.byte('Z')) then lmc_send_keys("z")
  -- elseif (button == string.byte('X')) then lmc_send_keys("x")
  -- elseif (button == string.byte('C')) then lmc_send_keys("c")
  -- elseif (button == string.byte('V')) then lmc_send_keys("v")
  -- elseif (button == string.byte('B')) then lmc_send_keys("b")
  -- elseif (button == string.byte('N')) then lmc_send_keys("n")
  -- elseif (button == string.byte('M')) then lmc_send_keys("m")
  
  --Numeric Pad
  
	else print('Not yet assigned: ' .. button) 
    end
	
end)