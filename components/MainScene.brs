' ********** Copyright 2016 Roku Corp.  All Rights Reserved. **********  

sub init()
    m.top.SetFocus(true)
        
    m.simpleTask = CreateObject("roSGNode", "SimpleTask")   
    m.simpleTask.ObserveField("index", "onIndexChanged")
    'm.simpleTask.control = "RUN"
    
End sub
function onIndexChanged() as void
    'print "Your Dlink Plug has been turned ON."
end function
function onKeyEvent(key as String, press as Boolean) as Boolean
    result = false
    
    if (key = "OK") then
        buttonGroup = m.top.findNode("buttonGroup")
        m.simpleTask.setField("button", buttonGroup.buttonSelected)
        m.simpleTask.control = "RUN"
    end if
    
    return result 
end function
