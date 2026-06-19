# Your current HP is: 7500.0
# Predicted: High HP...Medium HP
# Predicted: Biggest Threat: Robots...Biggest Threat: Minotaur
# Predicted: Biggest Threat: Lasers...Biggest Hazard: Spiked Traps
# Predicted: Missable Treasure: Haunted Doll...Missable Treasure: Haute Couture Bag
# Predicted: Objective: Disable Central Terminal...Objective: Lure Minotaur Into trap.
 
# Predicted: High HP, Biggest Threat: Robots, Biggest Threat: Lasers Missable Treasure: Haunted Doll Objective: Disable Central Terminal... True Decision: Medium HP, Biggest Threat: Minotaur, Biggest Hazard: Spiked Traps Missable Treasure: Haute Couture Bag Objective: Lure Minotaur Into trap. [:high_hp, 0.2][:high_threat, 0.2][:low_hazard, 0.12][:high_treasure, 0.2][:fourth_objective, 0.2]

module RobotSoldier
  class Player
    def self.text_parser
      loop do
        puts "FRY: Je suis Fry le Robot"

        print "You are being stalked by a Robot Soldier, what do you? << "; player_action = gets.chomp

        possible_actions = {
          "Whack"      => "You",
          "the"        => " whack ",
          "robot"      => "the robot ",
        }, {
          "Lure"     => "You",
          "the"      => " lure ",
          "robot"    => "the robot ",
        }, {
          "Fry"      => "You ",
          "the"      => " fry ",
          "robot"    => "the ",
        }

        stun_state = possible_actions[0]
        lure_state = possible_actions[1]
        trap_state = possible_actions[2]

        if    player_action == "Whack the robot"
          tokenized_words = player_action.split(" ")

          word_one = tokenized_words[0]
          word_two = tokenized_words[1]
          word_tre = tokenized_words[2]

          print stun_state[word_one]
          print stun_state[word_two]
          print stun_state[word_tre]

          RobotSoldier::Player.stun_robot
        elsif player_action == "Lure the robot"
          tokenized_words = player_action.split(" ")

          word_one = tokenized_words[0]
          word_two = tokenized_words[1]
          word_tre = tokenized_words[2]

          print lure_state[word_one]
          print lure_state[word_two]
          print lure_state[word_tre]

          RobotSoldier::Player.lure_robot
        elsif player_action == "Fry the robot"
          sleep(1.5)

          puts "You cannot trap the robot, it can only run into a trap."

          RobotSoldier::Player.lure_robot
        else
          puts "Command is not understood..."
        end
      end
    end

    def self.lure_robot
      puts 'RobotSoldier follows the player...'

      sleep(1.5)

      RobotSoldier::Enemy.follow_player
      RobotSoldier::Enemy.stun_robot
      RobotSoldier::Player.player_trapped
    end

    def self.stun_robot
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

      $monster_stunned == monster_stun_states[cur_row][cur_col][cur_arr]

      if $monster_stunned == true
        RobotSoldier::Enemy.robot_trapped
      else
        RobotSoldier::Player.player_trapped
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
    end

    def self.fry_robot
      puts "You found a haunted doll toy."

      abort
    end
  end

  class Enemy
    def self.follow_player
      puts "RobotSoldier follows the player."
    end

    def self.kill_player
      if $event == true
        puts "GAME OVER"

        abort
      else
        RobotSoldier::Player.text_parser
      end
    end

    def self.robot_trapped
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

      $monster_trapped = player_trap_states[cur_row][cur_col][cur_arr]
    end
  end

  class Trap
    if $monster_trapped == true
      puts "Robot Soldier is fried by an electric trap."

      RobotSoldier::Player.fry_robot
    else
      if $monster_stunned == true
        puts "Robot becomes unstunned..."

        sleep(1.5)

        $monster_stunned = false
      else
        puts "Robot is not stunned..."

        RobotSoldier::Player.player_trapped
      end
    end

    if $player_trapped == true
      puts "Player is trapped by the Robot Soldier."

      RobotSoldier::Enemy.kill_player
    else
      puts "Player avoid the spike trap."

      sleep(1.5)

      RobotSoldier::Player.text_parser
    end
  end
end

