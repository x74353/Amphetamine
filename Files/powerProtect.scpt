-- ENABLE/DISABLE POWER PROTECT
on enableDisablePowerProtect(inputString)
	
	set resultString to ""
	
	-- "ENABLE" MEANS TO ENABLE POWER PROTECT
	-- ENABLING POWER PROTECT MEANS DISABLING SLEEP WHEN THE MAC'S BUILT-IN DISPLAY IS CLOSED
	if inputString is "enable" then
		
		try
			
			-- IF THE SUDO OVERRIDE FILE HAS BEEN INSTALLED
			if powerProtectSudoFileExists() then
				
				-- EXECUTE THE COMMAND USING THE AUTHENTICATION-LESS METHOD
				do shell script "sudo pmset -a disablesleep 1"
				
			else
				
				-- EXECUTE THE COMMAND USING THE AUTHENTICATION METHOD
				do shell script "pmset -a disablesleep 1" with administrator privileges
				
			end if
			
			set resultString to "success"
			
		on error
			
			set resultString to "fail"
			
		end try
		
		-- "DISABLE" MEANS TO DISABLE POWER PROTECT
		-- DISABLING POWER PROTECT MEANS ENABLING SLEEP WHEN THE MAC'S BUILT-IN DISPLAY IS CLOSED
	else if inputString is "disable" then
		
		-- RUN CHECK VIA PMSET COMMAND TO DETERMINE WHETHER SLEEP IS ENABLED/DISABLED
		set pmsetResult to do shell script "pmset -g | awk '/SleepDisabled/{print $2}'"
		
		-- IF SLEEP IS DISABLED
		if pmsetResult contains "1" then
			
			try
				
				-- IF THE SUDO OVERRIDE FILE HAS BEEN INSTALLED
				if powerProtectSudoFileExists() then
					
					-- EXECUTE THE COMMAND USING THE AUTHENTICATION-LESS METHOD
					do shell script "sudo pmset -a disablesleep 0"
					
				else
					
					-- EXECUTE THE COMMAND USING THE AUTHENTICATION METHOD
					do shell script "pmset -a disablesleep 0" with administrator privileges
					
				end if
				
				set resultString to "success"
				
			on error
				
				set resultString to "fail"
				
			end try
			
		end if
		
	end if
	
end enableDisablePowerProtect

-- INSTALL THE CONFIGURATION FILE TO MAKE POWER PROTECT AUTHENTICATION-LESS
on installPowerProtectSudoOverride(inputString)
	
	try
		-- CREATE THE AUTHENTICATION OVERRIDE FILE AND THEN MOVE IT TO /etc/sudoers.d
		do shell script "touch ~/Library/Containers/com.if.Amphetamine/Data/Library/Application\\ Support/Amphetamine/amphetamine_PowerProtect; echo \"Cmnd_Alias PMSET_AMPHETAMINE= /usr/bin/pmset -a disablesleep 1, /usr/bin/pmset -a disablesleep 0
%admin ALL=(ALL) NOPASSWD: PMSET_AMPHETAMINE\" >> ~/Library/Containers/com.if.Amphetamine/Data/Library/Application\\ Support/Amphetamine/amphetamine_PowerProtect; mv ~/Library/Containers/com.if.Amphetamine/Data/Library/Application\\ Support/Amphetamine/amphetamine_PowerProtect /etc/sudoers.d/amphetamine_PowerProtect" with administrator privileges
		
		return "success"
		
	on error
		
		return "fail"
		
	end try
	
end installPowerProtectSudoOverride


-- CHECK TO SEE IF THE POWER PROTECT AUTHENTICATION-LESS CONFIGURATION FILE EXISTS
on powerProtectSudoFileExists()
	
	tell application "System Events"
		
		if exists file "/etc/sudoers.d/amphetamine_PowerProtect" then
			
			return true
			
		else
			
			return false
			
		end if
		
	end tell
	
end powerProtectSudoFileExists
