seq = {}
pl_seq = {}
button1 = false
button2 = false
button3 = false
button4 = false

function startgame()
 add(seq,flr(rnd(4)+1)) 
 sleep(2)
 --buttonslichter aktivieren
 for a in all(seq) do
  --print(a)
  spr(a+16,a*10)
  sfx(a)
  sleep(1)
  spr(16-a,a*10)
  flip()
  --sleep(1)
 end
end


function sleep(s) 
 for i=1,s*30 do 
  flip() 
 end 
end


function btncheck()
 if btn(0) then
  button1 = true
  sfx(1)
 elseif btn(1) then
   button2 = true
   sfx(2)
 elseif btn(2) then
   button3 = true
   sfx(3)
 elseif btn(3) then
   button4 = true
   sfx(4)
 else
  button1 = false
  button2 = false
  button3 = false
  button4 = false
 end
end

function _init()
 cls()
 spr(1,10)
 spr(2,20)
 spr(3,30)
 spr(4,40)
 last = time()
end

function _update()
 --btncheck()
 
 
end


function _draw()
 
 startgame()
  
end
