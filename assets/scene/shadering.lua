---@type Zenitha.Scene
local scene={}

local tryCounter=0
local fool=os.date("%m%d")=="0401"

function scene.load()
    BG.set()
    BGM.play('title')
end

function scene.keyDown(key)
    if key=='application' then
        SCN.go('result')
        return true
    end
end

function scene.draw()
    if fool then
        GC.setColor(1,.26,.26)
        GC.setLineWidth(26)
        GC.line(260,160,1010,260)
        GC.setColor(1,1,1)
        FONT.set(150,'_basic')
        GC.strokePrint('full',4,COLOR.D,COLOR.L,"Techmino",640,130,nil,'center')
        GC.translate(860,260)
        GC.rotate(-.0626)
        FONT.set(70,'_basic')
        GC.strokePrint('full',3,COLOR.D,COLOR.L,"Galaxy",0,0,nil,'center')
    end
end
return scene
