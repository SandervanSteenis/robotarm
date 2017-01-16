require 'robot_arm'
robot_arm:random_level(1)
cond= true
durp = 1
robot_arm.speed= 0.97
while (cond) do
  robot_arm:grab()
  result = robot_arm:scan()
  if (result) == nil then
    cond = false
  else
    for i= 1, (durp)do
      robot_arm:move_right()
    end
  durp = (durp) + 1
  robot_arm:drop()
   for i= 1, (durp) do
    robot_arm:move_left()
  end  
  end
end