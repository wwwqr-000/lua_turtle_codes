function checkDirection(direction)
    if direction == true then
        turtle.turnRight()
    else
        turtle.turnLeft()
    end
end
 
direction = true
while (1 > 0) do
    a = 0
    repeat
        i = 0
        repeat
            turtle.dig()
            turtle.forward()
            i = i + 1
        until (i > 8)
        if a < 9 then
            checkDirection(direction)
            turtle.dig()
            turtle.forward()
            checkDirection(direction)
            if direction == true then
                direction = false
            else
                direction = true
            end
        else
            print("Stopped")
        end
        a = a + 1
    until (a > 9)
    turtle.turnRight()
    j = 0
    repeat
        turtle.forward()
        j = j + 1
        print(j)
    until (j >= 9)
    turtle.turnRight()
    turtle.digDown()
    turtle.down()
    direction = true
end