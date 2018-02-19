scriptId = 'com.thalmic.examples.gesturescript'
scriptTitle = "debug"
scriptDetailsUrl = ""

myo.setLockingPolicy("none")


function onPoseEdge(pose, edge)
    --myo.debug("onPoseEdge: " .. pose .. ", " .. edge)
    pitch = myo.getPitch()
    roll = myo.getRoll()
	yaw = myo.getYaw()
	
    pi = math.pi
	if edge == "on" and pose == "fist" and pitch < 0 then--r
		myo.debug("What is the time?")
		myo.keyboard("h","press")
		myo.keyboard("return","press")
	elseif edge == "on" and pose == "fist" and pitch < .5 and pitch >= 0 then --q
		myo.debug("What is your name?")
		myo.keyboard("e","press")
		myo.keyboard("return","press")
	elseif edge == "on" and pose == "fist" and pitch > .5 then --g
		myo.debug("Thank You")
		myo.keyboard("n","press")
		myo.keyboard("return","press")
	elseif edge == "on" and pose == "waveOut" and pitch < .5 and pitch >= 0 then --s
		myo.debug("Do You Speak English?")
		myo.keyboard("g","press")
		myo.keyboard("return","press")
	--elseif edge == "on" and pose == "fingersSpread" and pitch > .5 then --t
	--	myo.debug("Do you have a phone?")
	--	myo.keyboard("h","press")
	--	myo.keyboard("return","press")
	elseif edge == "on" and pose == "waveIn" and pitch < 0 then --o
		myo.debug("Where is the washroom?")
		myo.keyboard("i","press")
		myo.keyboard("return","press")
	elseif edge == "on" and pose == "waveIn" and pitch > .5 then --i
			myo.debug("Sorry")
		myo.keyboard("k","press")
		myo.keyboard("return","press")
	elseif edge == "on" and pose == "waveOut" and pitch < 0 then --h
		myo.debug("Excuse me")
		myo.keyboard("j","press")
		myo.keyboard("return","press")
	elseif edge == "on" and pose == "fingersSpread" and pitch < 0 then --m
		myo.debug("Where is the closest restaurant?")
		myo.keyboard("c","press")
		myo.keyboard("return","press")
	elseif edge == "on" and pose == "fingersSpread" and pitch < .5 and pitch >= 0 then --n
		myo.debug("where is the closest bus station?")
		myo.keyboard("f","press")
		myo.keyboard("return","press")
	elseif edge == "on" and pose == "waveIn" and pitch < .5 and pitch >= 0 then --d
		myo.debug("I need help, call 9-1-1")
		myo.keyboard("d","press")
		myo.keyboard("return","press")
	elseif edge == "on" and pose == "doubleTap" and pitch < .5 and pitch >= 0 then --f
		myo.debug("Goodbye")
		myo.keyboard("b","press")
		myo.keyboard("return","press")
	elseif edge == "on" and pose == "doubleTap" and pitch > .5 then --l
		myo.debug("I love Digiflare")
		myo.keyboard("p","press")
		myo.keyboard("return","press")
	elseif edge == "on" and pose == "waveOut" and pitch > .5 then --e
		myo.debug("Hello")
		myo.keyboard("a","press")
		myo.keyboard("return","press")
	end
end


--waveInk, waveOut, fist, doubleTap, fingersSpread, rest and unknown. rest

function onPeriodic()
	--myo.debug(myo.getPitch())
end

function onForegroundWindowChange(app, title)
    --myo.debug("onForegroundWindowChange: " .. app .. ", " .. title)
    return true
end

function activeAppName()
    return "Output Everything"
end

--function onActiveChange(isActive)
    --myo.debug("onActiveChange")
--end