

-> cave_mouth

== cave_mouth ==
Welcome to the Grand Valley Cave. Objective: (Survive and find the treasure) {torch_pickup: |There is a torch on the floor.} The cave extends to the east and west.
+ [Take the east tunnel] -> east_tunnel
+ [Take the west tunnel] -> west_tunnel
+ [Take the north tunnel] -> north_tunnel
+ [Take the south tunnel] -> south_tunnel
* [pick up the torch] -> torch_pickup

== east_tunnel ==
You are in the east tunnel. it is very dark, you can`t see anything.
*{torch_pickup} [Light torch] -> east_tunnel_lit
+ [Light torch] -> east_tunnel_lit
+[Go Back] -> cave_mouth
-> END


== west_tunnel ==
You are  in the west
+[Go back] -> cave_mouth
-> END

=== torch_pickup ===
You have now pickup a torch. May it light the way.
+[Go Back] -> cave_mouth
-> END

== east_tunnel_lit ==
The light of your torch glints off of the thousands of coins in the room.
+[Go back]->cave_mouth
-> END

== north_tunnel ==
You are in the north. Turn around or proceed.
+[Go back] -> cave_mouth
+[Keep going]->Bear_Attack
-> END

== south_tunnel ==
You are in the south. BEWARE!!!!
+[keep going]->500k
*{500k_pickup}[pickup cash]->cash
+[Go back]->cave_mouth
-> END
== Bear_Attack ==
AHHH THERES A BEAR
....YOU DIED
-> END
== 500k ==
{500k_pickup: |Congratulations you have won 500k cash}
+[pickup cash]->cash
->END

=== 500k_pickup ===
You have picked up the 500k cash
->END

== cash ==
You now have cash in inventory
+[go back]->cave_mouth
->END
