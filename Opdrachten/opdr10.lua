require 'robot_arm'
robot_arm:load_level('exercise 10')
robot_arm.speed=0.99
robot_arm:grab()
for _ = 1,9 do 
robot_arm:move_right()
end
robot_arm:drop()
for _ =1,8 do
  robot_arm:move_left()
end
robot_arm:grab()
      