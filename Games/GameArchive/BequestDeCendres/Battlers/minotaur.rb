# Your current HP is: 9999.0
# Predicted: Max HP...Medium HP
# Predicted: Biggest Threat: No Threats...Biggest Threat: Minotaur
# Predicted: Biggest Threat: Main Boss...Biggest Hazard: Spiked Traps
# Predicted: Missable Treasure: Warp Gem...Missable Treasure: Haute Couture Bag
# Predicted: Objective: Defeat Rival Monster...Objective: Lure Minotaur Into trap.
 
# Predicted: Max HP, Biggest Threat: No Threats, Biggest Threat: Main Boss Missable Treasure: Warp Gem Objective: Defeat Rival Monster... True Decision: Medium HP, Biggest Threat: Minotaur, Biggest Hazard: Spiked Traps Missable Treasure: Haute Couture Bag Objective: Lure Minotaur Into trap. [:max_hp, 0.2][:no_threat, 0.2][:low_hazard, 0.12][:max_treasure, 0.2][:fifth_objective, 0.2]

module Minotaur
  class Title
     def self.display
       system("clear")

       # \e[38;2;187;127;118m

#       puts "\033[8;55;190t \e]11;#0E0D0C\e\\ \e]10;#9A9A92\e\\
#                                                                                                                                                                                 
#      # ###                  ##                                             ##### ##                       # ###                            ##                                   
#    /  /###  /                ##                                         /#####  /##                     /  /###  /                          ##                                  
#   /  /  ###/                 ##                                       //    /  / ###                   /  /  ###/                           ##                                  
#  /  ##   ##                  ##                                      /     /  /   ###                 /  ##   ##                            ##                                  
# /  ###                       ##                                           /  /     ###               /  ###                                 ##                                  
#   ##          /###     ### ##    /##       /###   ##   ####            ## ##      ##    /##       ##   ##          /##  ###  /###     ### ##  ###  /###     /##       /###    
#   ##         / ###  / ######### / ###     / ###  / ##    ###  /        ## ##      ##   / ###      ##   ##         / ###  ###/ #### / ######### ###/ #### / / ###     / #### / 
#   ##        /   ###/ ##   #### /   ###   /   ###/  ##     ###/         ## ##      ##  /   ###     ##   ##        /   ###  ##   ###/ ##   ####   ##   ###/ /   ###   ##  ###/  
#   ##       ##    ##  ##    ## ##    ### ##    ##   ##      ##          ## ##      ## ##    ###    ##   ##       ##    ### ##    ##  ##    ##    ##       ##    ### ####       
#   ##       ##    ##  ##    ## ########  ##    ##   ##      ##          ## ##      ## ########     ##   ##       ########  ##    ##  ##    ##    ##       ########    ###      
# ##  ##       ##    ##  ##    ## #######   ##    ##   ##      ##          #  ##      ## #######       ##  ##       #######   ##    ##  ##    ##    ##       #######       ###    
#  ## #      / ##    ##  ##    ## ##        ##    ##   ##      ##             /       /  ##             ## #      / ##        ##    ##  ##    ##    ##       ##              ###  
#   ###     /  ##    /#  ##    /# ####    / ##    /#   ##      /#        /###/       /   ####    /       ###     /  ####    / ##    ##  ##    /#    ##       ####    /  /###  ##  
#    ######/    ####/ ##  ####/    ######/   ####/ ##   ######/ ##      /   ########/     ######/         ######/    ######/  ###   ###  ####/      ###       ######/  / #### /   
#      ###       ###   ##  ###      #####     ###   ##   #####   ##    /       ####        #####            ###       #####    ###   ###  ###        ###       #####      ###/    
#                                                                      #                                                                                                          
#                                                                       ##                                                                                                        
# ▄         ▄  ▄▄▄▄▄▄▄▄▄▄▄  ▄    ▄  ▄▄▄▄▄▄▄▄▄▄▄  ▄▄        ▄  ▄▄▄▄▄▄▄▄▄▄▄  ▄▄▄▄▄▄▄▄▄▄▄  ▄▄▄▄▄▄▄▄▄▄▄  ▄▄        ▄ 
#▐░▌       ▐░▌▐░░░░░░░░░░░▌▐░▌  ▐░▌▐░░░░░░░░░░░▌▐░░▌      ▐░▌▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░░▌      ▐░▌
#▐░▌       ▐░▌▐░█▀▀▀▀▀▀▀█░▌▐░▌ ▐░▌ ▐░█▀▀▀▀▀▀▀█░▌▐░▌░▌     ▐░▌▐░█▀▀▀▀▀▀▀█░▌ ▀▀▀▀▀▀▀▀▀█░▌▐░█▀▀▀▀▀▀▀▀▀ ▐░▌░▌     ▐░▌
#▐░▌       ▐░▌▐░▌       ▐░▌▐░▌▐░▌  ▐░▌       ▐░▌▐░▌▐░▌    ▐░▌▐░▌       ▐░▌          ▐░▌▐░▌          ▐░▌▐░▌    ▐░▌
#▐░█▄▄▄▄▄▄▄█░▌▐░▌       ▐░▌▐░▌░▌   ▐░█▄▄▄▄▄▄▄█░▌▐░▌ ▐░▌   ▐░▌▐░▌       ▐░▌ ▄▄▄▄▄▄▄▄▄█░▌▐░█▄▄▄▄▄▄▄▄▄ ▐░▌ ▐░▌   ▐░▌
#▐░░░░░░░░░░░▌▐░▌       ▐░▌▐░░▌    ▐░░░░░░░░░░░▌▐░▌  ▐░▌  ▐░▌▐░▌       ▐░▌▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░▌  ▐░▌  ▐░▌
# ▀▀▀▀█░█▀▀▀▀ ▐░▌       ▐░▌▐░▌░▌   ▐░█▀▀▀▀▀▀▀█░▌▐░▌   ▐░▌ ▐░▌▐░▌       ▐░▌▐░█▀▀▀▀▀▀▀▀▀ ▐░█▀▀▀▀▀▀▀▀▀ ▐░▌   ▐░▌ ▐░▌
#     ▐░▌     ▐░▌       ▐░▌▐░▌▐░▌  ▐░▌       ▐░▌▐░▌    ▐░▌▐░▌▐░▌       ▐░▌▐░▌          ▐░▌          ▐░▌    ▐░▌▐░▌
#     ▐░▌     ▐░█▄▄▄▄▄▄▄█░▌▐░▌ ▐░▌ ▐░▌       ▐░▌▐░▌     ▐░▐░▌▐░█▄▄▄▄▄▄▄█░▌▐░█▄▄▄▄▄▄▄▄▄ ▐░█▄▄▄▄▄▄▄▄▄ ▐░▌     ▐░▐░▌
#     ▐░▌     ▐░░░░░░░░░░░▌▐░▌  ▐░▌▐░▌       ▐░▌▐░▌      ▐░░▌▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░▌      ▐░░▌
#      ▀       ▀▀▀▀▀▀▀▀▀▀▀  ▀    ▀  ▀         ▀  ▀        ▀▀  ▀▀▀▀▀▀▀▀▀▀▀  ▀▀▀▀▀▀▀▀▀▀▀  ▀▀▀▀▀▀▀▀▀▀▀  ▀        ▀▀ 
#                                                                                                                
#\e[0m"

      puts "\033[8;55;190t \e]11;#0E0D0C\e\\ MINOTAUR \e]10;#9A9A92\e\\"
    end
  end

  class LunarCalender
    def self.global_stats
      # Standard Operations
      $stalemates    = 0 # Keeps track of how many stalemates
      $player_struck = 0 # Keeps track of how many times player hit the enemy.
      $enemy_struck  = 0 # Keeps track of how many times enemy hit the player.

      # Amount of days in a year.
      $current_day = 0
      $lunar_ticks = 30

      ## Current Lunar Phase
      $current_phase = 0

      # Yes or no spider
      $has_pet_spider = false
      $current_ticks  = 0

      $player_level = 1
      $enemy_level = 1

      $player_hp   = 10 # File.read("lib/data/user/player_stats/player_hp.txt").strip.to_i
      $player_atk  =  2
      $player_heal =  4 #$player_healing_rate

      $enemy_hp   = 10
      $enemy_atk  =  2
      $enemy_heal =  4
    end

    def self.new_moon
      $player_hp   = 10 * $player_level
      $player_atk  =  2 * $player_level
      $player_heal =  2 * $player_level

      $enemy_hp  = 2  * $enemy_level
      $enemy_atk = 10 * $enemy_level # player gets 5 damage when factoring in healing rate.
    end

    def self.waxing_crescent
      $player_hp   = 9 * $player_level
      $player_atk  = 2 * $player_level
      $player_heal = 2 * $player_level

      $enemy_hp  = 4 * $enemy_level
      $enemy_atk = 8 * $enemy_level # Player gets exactly 4 damage when factoring in healing rate as defence.
    end

    def self.first_quarter
      $player_hp   = 7 * $player_level
      $player_atk  = 2 * $player_level
      $player_heal = 2 * $player_level

      $enemy_hp  = 6 * $enemy_level
      $enemy_atk = 6 * $enemy_level # player gets 3 damage when factoring in healing rate.
    end

    def self.waxing_gibbous
      $player_hp   = 6 * $player_level
      $player_atk  = 2 * $player_level
      $player_heal = 2 * $player_level

      $enemy_hp    = 8 * $enemy_level
      $enemy_atk   = 4 * $enemy_level # Player gets exactly 2 Damage when factoring in healing as defence. 
    end

    def self.full_moon
      $player_hp   = 4 * $player_level
      $player_atk  = 2 * $player_level
      $player_heal = 2 * $player_level

      $enemy_hp  = 10 * $enemy_level
      $enemy_atk =  2 * $enemy_level # Player gets exactly 1 damage when factoring in healing rate as defence.
    end

    def self.waning_gibbous
      $player_hp   = 6 * $player_level
      $player_atk  = 2 * $player_level
      $player_heal = 2 * $player_level

      $enemy_hp  = 8 * $enemy_level
      $enemy_atk = 4 * $enemy_level # Player gets exactly 2 damage when factoring in healing as defence.
    end

    def self.last_quarter
      $player_hp  = 7 * $player_level
      $player_atk = 2 * $player_level

      $enemy_hp  = 4 * $enemy_level
      $enemy_atk = 6 * $enemy_level # Player gets exactly 3 damage when factoring in healing as defence.
    end

    def self.waning_crescent
      $player_hp   = 8 * $player_level
      $player_atk  = 2 * $player_level
      $player_heal = 2 * $player_level # player gets exactly 4 damage when factoring in healing as defence.

      $enemy_hp  = 2 * $enemy_level
      $enemy_atk = 8 * $enemy_level
    end

    def self.lunar_cycle
      lunar_phases = [0, 1, 2, 3, 4, 5, 6, 7]

      # The current lunar phase mod 7
      current_phase  = $current_phase % 7
      #$current_phase = $current_phase + 1 % 7

      if    current_phase == lunar_phases[0]
        puts "\e[38;2;187;127;118mLa phase lunaire actuelle est: New Moon. Réinitialisation des statistiques du joueur...\e[0m"

        sleep(1)

        Minotaur::LunarCalender.new_moon
      elsif current_phase == lunar_phases[1]
        puts "\e[38;2;187;127;118mLa phase lunaire actuelle est: Waxing Gibbous. Réinitialisation des statistiques du joueur...\e[0m"

        sleep(1)

        Minotaur::LunarCalender.waxing_crescent
      elsif current_phase == lunar_phases[2]
        puts "\e[38;2;187;127;118mLa phase lunaire actuelle est: First Quarter. Réinitialisation des statistiques du joueur...\e[0m"

        sleep(1)

        Minotaur::LunarCalender.first_quarter
      elsif current_phase == lunar_phases[3]
        puts "\e[38;2;187;127;118mLa phase lunaire actuelle est: Waxing Gibbous. Réinitialisation des statistiques du joueur...\e[0m"

        sleep(1)

        Minotaur::LunarCalender.waxing_gibbous
      elsif current_phase == lunar_phases[4]
        puts "\e[38;2;187;127;118mLa phase lunaire actuelle est: Full_moon. Réinitialisation des statistiques du joueur...\e[0m"

        sleep(1)

        Minotaur::LunarCalender.full_moon
      elsif current_phase == lunar_phases[5]
        puts "\e[38;2;187;127;118mLa phase lunaire actuelle est: Waning Gibbous. Réinitialisation des statistiques du joueur...\e[0m"

        sleep(1)

        Minotaur::LunarCalender.waning_gibbous
      elsif current_phase == lunar_phases[6]
        puts "\e[38;2;187;127;118mLa phase lunaire actuelle est: Last Quarter. Réinitialisation des statistiques du joueur...\e[0m"

        sleep(1)

        Minotaur::LunarCalender.last_quarter
      elsif current_phase == lunar_phases[7]
        puts "\e[38;2;187;127;118mLa phase lunaire actuelle est: Waning Crescent. Réinitialisation des statistiques du joueur...\e[0m"

        sleep(1)

        Minotaur::LunarCalender.waning_crescent
      end

      sleep(1.5)
    end
  end

  class Player
    def self.get_player_name
      print "What is your name? << "; $your_name = gets.chomp
    end

    def self.player_hud
      if $lunar_ticks == 30
        Minotaur::LunarCalender.lunar_cycle

        # Reset lunar ticks back to zero for another thirty days.
        $lunar_ticks = 0
      else
        puts "No lunar phase has passed."
      end

      if $current_ticks == 24
        $lunar_ticks = $lunar_ticks + 1

        puts "Sackgasse: #{$stalemates} #{$your_name} frappé: #{$player_struck} Minotaure: #{$enemy_struck}"
      else
        puts "Sackgasse: #{$stalemates} #{$your_name} frappé: #{$player_struck} Minotaure: #{$enemy_struck}"

        $current_ticks = $current_ticks + 1
      end
    end

    def self.text_parser
      loop do
        Minotaur::Player.player_hud

        print "You are being stalked by a minotaur, what do you? << "; player_action = gets.chomp

        possible_actions = {
          "Stun"     => "You",
          "the"      => "stun",
          "minotaur" => "the minotaur",
        }, {
          "Lure"     => "You",
          "the"      => "lure",
          "minotaur" => "the minotaur",
        }, {
          "Trap"     => "You",
          "the"      => "trap",
          "minotaur" => "the minotaur",
        }

        stun_state = possible_actions[0]
        lure_state = possible_actions[1]
        trap_state = possible_actions[2]

        if    player_action == "Stun the minotaur"
          tokenized_words = player_action.split(" ")

          word_one = tokenized_words[0]
          word_two = tokenized_words[1]
          word_tre = tokenized_words[2]

          print stun_state[word_one]
          print " "
          print stun_state[word_two]
          print " "
          print stun_state[word_tre]
          print " "

          $event = true

          Minotaur::Player.stun_monster
        elsif player_action == "Lure the minotaur"
          tokenized_words = player_action.split(" ")

          word_one = tokenized_words[0]
          word_two = tokenized_words[1]
          word_tre = tokenized_words[2]

          print lure_state[word_one]
          print " "
          print lure_state[word_two]
          print " "
          print lure_state[word_tre]
          print " "

          $event = true

          Minotaur::Player.lure_monster
        elsif player_action == "Trap the minotaur"
          tokenized_words = player_action.split(" ")

          word_one = tokenized_words[0]
          word_two = tokenized_words[1]
          word_tre = tokenized_words[2]

          print trap_state[word_one]
          print " "
          print trap_state[word_two]
          print " "
          print trap_state[word_tre]
          print " "

          $event = true

          Minotaur::Enemy.minotaur_trapped
        else
          puts "Command is not understood..."
        end
      end

    end

    def self.lure_monster
      puts 'Minotaur follows the player...'

      sleep(1.5)

      Minotaur::Enemy.follow_player
      Minotaur::Player.stun_monster
      Minotaur::Enemy.minotaur_trapped
      Minotaur::Trap.trap_detection
    end

    def self.stun_monster
      monster_stun_states = [
        [[true,  true], [true,  false]],
        [[false, true], [false, false]],
      ]

      row_options = [0, 1]
      col_options = [0, 1]
      arr_options = [0, 1]

      cur_row = row_options.sample
      cur_col = col_options.sample
      cur_arr = arr_options.sample

      puts $monster_stunned == monster_stun_states[cur_row][cur_col][cur_arr]
      print " "

      if $monster_stunned == true
        Minotaur::Enemy.minotaur_trapped
      else
        Minotaur::Player.player_trapped
      end
    end

    def self.player_trapped
      #        true  false
      # true   t,t   t,f
      # false  f,t   f,f

      player_trap_states = [
        [[true,  true], [true,  false]],
        [[false, true], [false, false]],
      ]

      row_options = [0, 1]
      col_options = [0, 1]
      arr_options = [0, 1]

      cur_row = row_options.sample
      cur_col = col_options.sample
      cur_arr = arr_options.sample

      $player_trapped = player_trap_states[cur_row][cur_col][cur_arr]

      Minotaur::Trap.trap_detection
    end

    def self.kill_monster
      puts "YOU WIN"

      gets.chomp

      abort
    end
  end

  class Enemy
    def self.learn_player
    end

    def self.guess_player
    end

    def self.follow_player
      puts "Minotaur smells blood on the trail and follows the player."
    end

    def self.kill_player
      if $event == true
        puts "GAME OVER"

        abort
      else
        Minotaur::Player.text_parser
      end
    end

    def self.minotaur_trapped
      #        true  false
      # true   t,t   t,f
      # false  f,t   f,f

      monster_trap_states = [
        [[true,  true], [true,  false]],
        [[false, true], [false, false]],
      ]

      row_options = [0, 1]
      col_options = [0, 1]
      arr_options = [0, 1]

      cur_row = row_options.sample
      cur_col = col_options.sample
      cur_arr = arr_options.sample

      $monster_trapped = monster_trap_states[cur_row][cur_col][cur_arr]
    end

    def self.rock_paper_scissors
      conditions = {
        "Epee"  => "Ishi",  # Sword
        "Ishi"  => "Bache", # Stone
        "Bache" => "Epee",  # Tarp
      }

      print "How do you wish to attack? ( Epee, Ishi, Bache ) << "; @choice = gets.chomp

      possible_enemy_commands = ["Epee", "Ishi", "Bache"]

      @cchoice = possible_enemy_commands.sample

      if    conditions[@cchoice] == @choice
        puts "#{$your_name} attacked the Minotaure..."

        $player_hp = @enemy_atk - @player_heal
      elsif conditions[@choice]  == @cchoice
        puts "Minotaure attacked #{$your_name}..."

        $enemy_hp  = @player_atk - @enemy_heal
      elsif @cchoice == @choice
        puts "#{$your_name} and Minotaure reached a stalemate."
      else
        puts "Unrecognized attack pattern..."
      end

      Minotaur::Player.text_parser
    end
  end

  class Trap
    def self.trap_detection
      if $enemy_hp < 1
        Minotaur::Player.kill_monster
      end

      if $monster_trapped == true
        puts "Minotaur is killed by a spike trap."

        Minotaur::Player.kill_monster
      else
        if $monster_stunned == true
          puts "Monster becomes unstunned..."

          sleep(1.5)

          $monster_stunned = false

          Minotaur::Enemy.rock_paper_scissors
        else
          if $event == true
            puts "Monster is not stunned."
          end

          sleep(1.5)

          Minotaur::Player.text_parser
        end
      end

      if $player_trapped == true
        if $player_hp < 1
          Minotaur::Enemy.kill_player
        end

        if $event == true
          puts "Player is trapped by the minotaur."
        end

        Minotaur::Enemy.rock_paper_scissors
      else
        if $event == true
          puts "Player avoids the spike trap."
        end

        sleep(1.5)

        Minotaur::Player.text_parser
      end
    end
  end

  class NPC
    def self.mentor
      dead_player_name   = File.readlines("lib/npc/dead_player_names.txt")
      dead_player_deaths = File.readlines("lib/npc/dead_player_deaths.txt")

      current_death_type = dead_player_deaths.sample.strip
      current_death_type_list = dead_player_deaths.sample.split(" ")

      mentor_name = dead_player_name.sample.strip

      @current_death_type = current_death_type
      @mentor_name        = mentor_name
    end

    def self.mentor_labels
      require "SelfModifiedDecisionTree"

      dead_player_name   = File.readlines("lib/npc/dead_player_names.txt")
      mentor_name        = dead_player_name.sample.strip

      possible_inputs = [
        [[  0.5, 0.5], [  0.5, 25.0], [  0.5, 50.0], [  0.5, 75.0], [  0.5, 100.0]],
        [[ 25.0, 0.5], [ 25.0, 25.0], [ 25.0, 50.0], [ 25.0, 75.0], [ 25.0, 100.0]],
        [[ 50.0, 0.5], [ 50.0, 25.0], [ 50.0, 50.0], [ 50.0, 75.0], [ 50.0, 100.0]],
        [[ 75.0, 0.5], [ 75.0, 25.0], [ 75.0, 50.0], [ 75.0, 75.0], [ 75.0, 100.0]],
        [[100.0, 0.5], [100.0, 25.0], [100.0, 50.0], [100.0, 75.0], [100.0, 100.0]],
      ]

      row_options = [0, 1, 2, 3, 4]
      col_options = [0, 1, 2, 3, 4]
      arr_options = [0, 1]

      cur_row = row_options.sample
      cur_col = col_options.sample
      cur_arr = arr_options.sample

      @current_input = possible_inputs[cur_row][cur_col][cur_arr]

      attributes = ["Student"], ["Mentor"]

      training = [
        [  0.5,          "#{$your_name}: Why are you such a failure?"],
        [ 25.0,      "#{$your_name}: Can this wait for another time?"],
        [ 50.0,            "#{$your_name}: OK, maybe just this once."],
        [ 75.0,            "#{$your_name}: I guess I have some time."],
        [100.0, "#{$your_name}: Sensei, is there something you need?"],
      ], [
        [  0.5, "Mayor #{@mentor_name}: You should be respectful to your elders, #{$your_name}. I have knowledge to pass down to you. Previously I died #{@current_death_type}, Remember not to croak #{@current_death_type}."],

        [ 25.0, "Mayor #{@mentor_name}: There will always be plenty of time, excpet when you're old, #{$your_name}. I have knowledge to pass down to you. Previously I died #{@current_death_type}, Remember not to croak #{@current_death_type}."],

        [ 50.0, "Mayor #{@mentor_name}: I assure you this will be worth your time, #{$your_name}. I have knowledge to pass down to you. Previously I died #{@current_death_type}, Remember not to croak #{@current_death_type}."],

        [ 75.0, "Mayor #{@mentor_name}: Absolutely, especially after I'm gone, #{$your_name}. I have knowledge to pass down to you. Previously I died #{@current_death_type}, Remember not to croak #{@current_death_type}."],

        [100.0, "Mayor #{@mentor_name}: Yes, I have something important to tell you #{$your_name}. Previously I died #{@current_death_type}, Remember not to croak #{@current_death_type}."],
      ]

      dec_tree_configurations =    DecisionTree::ID3Tree.new(attributes[0], training[0], 1, :continuous),
                                   DecisionTree::ID3Tree.new(attributes[1], training[1], 1, :continuous)

      current_dectree1 = dec_tree_configurations[0]
      current_dectree1.train

      current_dectree2 = dec_tree_configurations[1]
      current_dectree2.train

      student_test = [@current_input, "Sarah: OK, maybe just this once."]
      mentor_test  = [@current_input, "Mayor #{mentor_name}: I assure you this will be worth your time, #{$your_name}. I have knowledge to pass down to you. Previously I died #{@current_death_type}, Remember not to croak #{@current_death_type}."]

      @student_score = current_dectree1.predict(student_test)
      @mentor_score  = current_dectree2.predict(mentor_test)

      puts @student_score
      puts @mentor_score

      puts " "
    end

    def self.mentor_probability
      require "SelfModifiedDecisionTree"

      mentor_name = "Suzuki Marie"

      wisdom = RevisedBayes.new(:student, :mentor)

      ## Student
      wisdom.train(:student,          "#{$your_name}: Why are you such a failure?", "disciple")
      wisdom.train(:student,      "#{$your_name}: Can this wait for another time?", "disciple")
      wisdom.train(:student,            "#{$your_name}: OK, maybe just this once.", "disciple")
      wisdom.train(:student,            "#{$your_name}: I guess I have some time.", "disciple")
      wisdom.train(:student, "#{$your_name}: Sensei, is there something you need?", "disciple")

      ## Mentor
      wisdom.train(:mentor, "Mayor #{@mentor_name}: You should be respectful to your elders, #{$your_name}. I have knowledge to pass down to you. Previously I died #{@current_death_type}, Remember not to croak #{@current_death_type}.", "mentor")

      wisdom.train(:mentor, "Mayor #{@mentor_name}: There will always be plenty of time, excpet when you're old, #{$your_name}. I have knowledge to pass down to you. Previously I died #{@current_death_type}, Remember not to croak #{@current_death_type}.", "mentor")

      wisdom.train(:mentor, "Mayor #{@mentor_name}: I assure you this will be worth your time, #{$your_name}. I have knowledge to pass down to you. Previously I died #{@current_death_type}, Remember not to croak #{@current_death_type}.", "mentor")

      wisdom.train(:mentor, "Mayor #{@mentor_name}: Absolutely, especially after I'm gone, #{$your_name}. I have knowledge to pass down to you. Previously I died #{@current_death_type}, Remember not to croak #{@current_death_type}.", "mentor")

      wisdom.train(:mentor, "Mayor #{@mentor_name}: Yes, I have something important to tell you #{$your_name}. Previously I died #{@current_death_type}, Remember not to croak #{@current_death_type}.", "mentor")

      student_classification = wisdom.classify(@student_score)
      mentor_classification  = wisdom.classify(@mentor_score)

      ## Based on wisdom confidence level, determines what prize the player gets.
      student_confidence_label = student_classification[0]
      student_condidence_score = student_classification[1]
      mentor_confidence_label  = mentor_classification[0]
      mentor_condidence_score  = mentor_classification[1]

      possible_prizes = {
        "Mayor #{@mentor_name}: You should be respectful to your elders, #{$your_name}. I have knowledge to pass down to you. Previously I died #{@current_death_type}, Remember not to croak #{@current_death_type}." => "Wooden Paddle Spanking",

        "Mayor #{@mentor_name}: There will always be plenty of time, excpet when you're old, #{$your_name}. I have knowledge to pass down to you. Previously I died #{@current_death_type}, Remember not to croak #{@current_death_type}." => "Lump Of Coal",

        "Mayor #{@mentor_name}: I assure you this will be worth your time, #{$your_name}. I have knowledge to pass down to you. Previously I died #{@current_death_type}, Remember not to croak #{@current_death_type}." => "Wooden Sword",

        "Mayor #{@mentor_name}: Absolutely, especially after I'm gone, #{$your_name}. I have knowledge to pass down to you. Previously I died #{@current_death_type}, Remember not to croak #{@current_death_type}." => "Bronze Katana",

        "Mayor #{@mentor_name}: Absolutely, especially after I'm gone, #{$your_name}. I have knowledge to pass down to you. Previously I died #{@current_death_type}, Remember not to croak #{@current_death_type}." => "Haute Couture Bag",

        "Mayor #{@mentor_name}: Yes, I have something important to tell you #{$your_name}. Previously I died #{@current_death_type}, Remember not to croak #{@current_death_type}." => "Haunted Doll",
      }

      puts "Student Politeness: #{@current_input}"
      puts "Student Competence: #{student_classification[0]} #{student_classification[1]}"

      your_prize = possible_prizes[@mentor_score]

      puts "Congratulations, you won: #{your_prize}"
    end

    ########################################################################################
    #                               Enemy And Player Learning
    ########################################################################################
  end

end
