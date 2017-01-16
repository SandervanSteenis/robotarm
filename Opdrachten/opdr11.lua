require 'robot_arm'
robot_arm:load_level('exercise 11')
robot_arm.speed= 0.95
for i= 1,9 do
  robot_arm:move_right()
end
position= 2
robot_arm:grab()
first = robot_arm:scan()
if first == "red" then
  robot_arm:drop()
elseif first ~= "red" then
  for i=1,9 do
    robot_arm:move_left()
  end
  robot_arm:drop()
  for i=1,8 do
    robot_arm:move_right()
  end
end
for i= 1,9 do
  robot_arm:grab()
  result = robot_arm:scan()
  if result == "red" then
    for i= 1, 9 do
      robot_arm:move_right()
    end
    robot_arm:drop()
    for i=3, (position) do
      robot_arm:move_left()
    end
  elseif result ~= "red" then
    robot_arm:drop()
  end
  robot_arm:move_left()
  position= (position) + 1
end