rand := Random value(0,100) ceil
guess := 0
previous_distance := 0

"Guess a random number between 1 and 100" println

while(guess != rand,
  previous_distance := rand - guess
  if(previous_distance < 0, previous_distance negate)

  guess = File standardInput readLine asNumber

  distance := rand - guess
  if(distance < 0, distance negate)

  if(distance > previous_distance, "Colder" println)
  if(distance < previous_distance, "Hotter" println)
)

"Correct!" println
