$limbs_lost = 0
$calculate_steps = 0

## Temporary game over sequence.
def hangman
  system("clear; ruby player_guillotine.rb")
end

def hop_tiles
  def process_two_steps
  
    if    $calculate_steps == 3
      puts "    [   ]    "
      puts "    [   ]    "
      puts "    [   ]    "
      puts "  [ @] [@ ]  "
      puts "    [   ]    "
      puts "  [  ] [  ]  "
      puts "    [   ]    "
      puts "  [       ]  "

      conditions = [ "in square", "out square" ]

      current_conditions = conditions.sample

      if    current_conditions == "in square"
        $calculate_steps = $calculate_steps + 1
      elsif current_conditions == "out square"
        lose_turn
      end
      
      hop_tiles
    elsif $calculate_steps == 6
      puts "    [   ]    "
      puts "    [   ]    "
      puts "    [   ]    "
      puts "  [  ] [  ]  "
      puts "    [   ]    "
      puts "  [ @] [@ ]  "
      puts "    [   ]    "
      puts "  [       ]  "

      conditions = [ "in square", "out square" ]

      current_conditions = conditions.sample

      if    current_conditions == "in square"
        $calculate_steps = $calculate_steps + 1
      elsif current_conditions == "out square"
        lose_turn
      end
      
      hop_tiles
    elsif $calculate_steps == 9
      puts "    [   ]    "
      puts "    [   ]    "
      puts "    [   ]    "
      puts "  [  ] [  ]  "
      puts "    [   ]    "
      puts "  [  ] [  ]  "
      puts "    [   ]    "
      puts "  [ @   @ ]  "

      conditions = [ "in square", "out square" ]

      current_conditions = conditions.sample

      if    current_conditions == "in square"
        $calculate_steps = $calculate_steps + 1
      elsif current_conditions == "out square"
        lose_turn
      end
      
      hop_tiles
    end
  end

  $calculate_steps = 0

  loop do
    system("clear")
  
    puts "[ Limbs Lost: #{$limbs_lost} ]"
  
    if $calculate_steps == 0
      puts "    [ @ ]    "
      puts "    [   ]    "
      puts "    [   ]    "
      puts "  [  ] [  ]  "
      puts "    [   ]    "
      puts "  [  ] [  ]  "
      puts "    [   ]    "
      puts "  [       ]  "

      conditions = [ "in square", "out square" ]

      current_conditions = conditions.sample

      if    current_conditions == "in square"
        $calculate_steps = $calculate_steps + 1
      elsif current_conditions == "out square"
        lose_turn
      end
    elsif $calculate_steps == 1
      puts "    [   ]    "
      puts "    [ @ ]    "
      puts "    [   ]    "
      puts "  [  ] [  ]  "
      puts "    [   ]    "
      puts "  [  ] [  ]  "
      puts "    [   ]    "
      puts "  [       ]  "

      conditions = [ "in square", "out square" ]

      current_conditions = conditions.sample

      if    current_conditions == "in square"
        $calculate_steps = $calculate_steps + 1
      elsif current_conditions == "out square"
        lose_turn
      end
    elsif $calculate_steps == 2
      puts "    [   ]    "
      puts "    [   ]    "
      puts "    [ @ ]    "
      puts "  [  ] [  ]  "
      puts "    [   ]    "
      puts "  [  ] [  ]  "
      puts "    [   ]    "
      puts "  [       ]  "

      conditions = [ "in square", "out square" ]

      current_conditions = conditions.sample

      if    current_conditions == "in square"
        $calculate_steps = $calculate_steps + 2
      elsif current_conditions == "out square"
        lose_turn
      end
    elsif $calculate_steps == 5
      puts "    [   ]    "
      puts "    [   ]    "
      puts "    [   ]    "
      puts "  [  ] [  ]  "
      puts "    [ @ ]    "
      puts "  [  ] [  ]  "
      puts "    [   ]    "
      puts "  [       ]  "

      conditions = [ "in square", "out square" ]

      current_conditions == conditions.sample

      if    current_conditions == "in square"
        $calculate_steps = $calculate_steps + 1
      elsif current_conditions == "out square"
        lose_turn
      end
    elsif $calculate_steps == 8
      puts "    [   ]    "
      puts "    [   ]    "
      puts "    [   ]    "
      puts "  [  ] [  ]  "
      puts "    [   ]    "
      puts "  [  ] [  ]  "
      puts "    [ @ ]    "
      puts "  [       ]  "

      conditions = [ "in square", "out square" ]

      current_conditions = conditions.sample

      if    current_conditions == "in square"
        $calculate_steps = $calculate_steps + 1
      elsif current_conditions == "out square"
        lose_turn
      end
    else
      process_two_steps
    end

    $calculate_steps = $calculate_steps + 1

    sleep(1.5)

    system("clear")
  end
end

def lose_turn
  if $limbs_lost > 5
    puts ">> You crumbled into dust..."

    abort
    
    #system("ruby player_guillotine.rb")
    #hangman
  end

  puts ">> You lost one of your limbs..."

  sleep(1.5)

  $limbs_lost = $limbs_lost + 1
end

$calculate_steps = 0

loop do
  $player_has_stone = true

  possible_landing_zones = [
    "left-side",
    "inside-square",
    "right-side"
  ]

  if $player_has_stone == true
    print "Do you wish to toss the stone? << "; toss_stone = gets.chomp

    if    toss_stone == "toss"
      $player_has_stone = false

      print "Which side? << "; current_landing_spot = gets.chomp

      if current_landing_spot == "left-side"
        hop_tiles
      elsif current_landing_spot == "right-side"      
        hop_tiles
      elsif current_landing_spot == "inside-square"      
        hop_tiles
      else
        puts ">> Command not understood."
      end
    else
      puts ">> You have to toss the stone to play hopscotch."

      lose_turn
    end
  else
    lose_turn
  end
end
