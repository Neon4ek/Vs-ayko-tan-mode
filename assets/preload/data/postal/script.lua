function onSongStart()
	-- Inst and Vocals start playing, songPosition = 0
    --noteTweenAngle('Ayko-note0', 0, 30, 0.2, circInOut)
    --noteTweenAngle('Ayko-note1', 1, -30, 0.2, circInOut)
    --noteTweenAngle('Ayko-note2', 2, 30, 0.2, circIn)
    --noteTweenAngle('Ayko-note3', 3, -30, 0.2, circIn)
    --doTweenX('bf-move0', 'boyfriend', 1.5, 1, elasticInOut) двигать бф
    --doTweenZoom('camZOOM', 'camGame', 1, 1, elasticInOut) зум камеру
    --doTweenX('bfScaleTweenX', 'boyfriend.scale', 1.5, 1, 'elasticInOut')
   
end

function onUpdate(elapsed) 
    if curStep == 768  then
        doTweenZoom('camZOOM', 'camGame', 1.5, 1.1, 'linear')
    end
end