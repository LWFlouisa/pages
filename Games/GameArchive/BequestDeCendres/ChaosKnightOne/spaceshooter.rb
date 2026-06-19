## Prerequisites
player_hp = 7
enemy_hp  = 7

## Main Game Loop
loop do
  player_statuses = ['minor', 'mild', 'moderate', 'critical', 'severe', 'sayanara']
  enemy_statuses  = ['minor', 'mild', 'moderate', 'critical', 'severe', 'sayanara']

  sister_chaos = File.read("_images/characters/sister_chaos.txt").to_s
  sister_order  = File.read("_images/characters/sister_order.txt").to_s

  characters = [
    "Sister Chaos", "Sister Order"
  ]

  conditions = {
    "Sword"  => "Shield",
    "Shield " => "Dagger",
    "Dagger"   => "Sword",
  }

  if    player_hp == 7; puts "#{characters[0]}: No Damage"
  elsif player_hp == 6; puts "#{characters[0]}: #{player_statuses[0]}"
  elsif player_hp == 5; puts "#{characters[0]}: #{player_statuses[1]}"
  elsif player_hp == 4; puts "#{characters[0]}: #{player_statuses[2]}"
  elsif player_hp == 3; puts "#{characters[0]}: #{player_statuses[3]}"
  elsif player_hp == 2; puts "#{characters[0]}: #{player_statuses[4]}"
  elsif player_hp == 1; puts "#{characters[0]}: #{player_statuses[5]}"
  elsif player_hp == 0;
    system("clear; ruby wordguess.rb")
  else
    puts "#{characters[0]}: No Damage"
  end

  if    enemy_hp == 7; puts "#{characters[1]}: No Damage"
  elsif enemy_hp == 6; puts "#{characters[1]}: #{enemy_statuses[0]}"
  elsif enemy_hp == 5; puts "#{characters[1]}: #{enemy_statuses[1]}"
  elsif enemy_hp == 4; puts "#{characters[1]}: #{enemy_statuses[2]}"
  elsif enemy_hp == 3; puts "#{characters[1]}: #{enemy_statuses[3]}"
  elsif enemy_hp == 2; puts "#{characters[1]}: #{enemy_statuses[4]}"
  elsif enemy_hp == 1; puts "#{characters[1]}: #{enemy_statuses[5]}"
  elsif enemy_hp == 0;
    system("clear; ruby _endgame/enemy_guillotine.rb")

    gets.chomp

    abort
  else
    puts "#{characters[1]}: No Damage"
  end

  ## Enemy Actions
  puts characters[1]
  puts sister_order

  enemy_action = conditions.keys.sample

  sleep(1.5); system("clear")

  puts "The enemy ship chose: #{enemy_action}"

  ## Player Actions
  puts "Player HP = #{player_hp}"
  puts "Enemy HP = #{enemy_hp}"  

  puts characters[0]
  puts sister_chaos

  print "Sword, Shield, Dagger >> "; player_action = gets.chomp.capitalize

  sleep(1.5);

  puts " "

  if    conditions[player_action] == enemy_action
    puts ">> You were struck by the enemy."

    player_hp = player_hp - 1
  elsif player_action == enemy_action
    puts ">> You reach a stalemate."
  elsif conditions[enemy_action] == player_action
    puts ">> You struck the enemy."

    enemy_hp = enemy_hp - 1
  else
    puts "This choice is not a valid option."
  end
end
