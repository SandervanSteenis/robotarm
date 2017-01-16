require 'robot_arm'
robot_arm:load_level('exercise 9')
robot_arm.speed=0.99
for _ = 1,4 do
   for _ =1,4 do
   robot_arm:grab()
     for _ =1,5 do
     robot_arm:move_right()
   end
   robot_arm:drop()
   for _ =1,5 do
     robot_arm:move_left()
   end
 end
 robot_arm:move_right()
end
     