module Plant
  class Daisy
    #####################################################################################################################################
    #                                     Plant polination allows the bees to feel to restore health.                                   #
    #####################################################################################################################################
    def self.polinate
      $enemy_hp = $enemy_hp + 1
    end

    def self.sprout
      new_seed_value = @current_seed

      puts "Sprouting seeds for polination..."

      seed_limit = new_seed_value.size.to_i

      seed_limit.times do
        Plant::Daisy.polinate
      end
    end

    def self.seed
      puts "Planting seeds for sprouting daisies..."

      seeds = File.readlines("lib/seeds/seedlings/seeds,txt")

      index = 0

      seed_limit = seeds.size.to_i

      seed_limit.times do
        new_seed = seeds[index]

        @current_seed = 1 + new_seed
      end

      Plant::Daisy.sprout
    end
  end
end

module Animal
  class Bee
    #####################################################################################################################################
    #                           Uses Naive Bayes to come up with a confidence score for specific enemy actions.                         #
    #####################################################################################################################################
    def self.behaviours
      require "naive_bayes"

      swarm = NaiveBayes.new(:poke, :eat, :build)

      ## Poke
      swarm.train(:poke, "sting", "sting")

      ## Eat
      swarm.train(:poke, "consume nectar", "consume nectar")

      ## Build
      swarm.train(:build, "bore holes", "bore holes")

      #                 sting  consume nectar  bore holes
      # sting           s,s    s,c             s,b
      # consume nectar
      # bore holes

      bee_behaviours = [
        [["sting",          "sting"], ["sting",          "consume nectar"], ["sting",          "bore holes"]],
        [["consume nectar", "sting"], ["consume nectar", "consume nectar"], ["consume nectar", "bore holes"]],
        [["bore holes",     "sting"], ["bore holes",     "consume nectar"], ["bore holes",     "bore holes"]],
      ]

      row_options = [0, 1, 2]
      col_options = [0, 1, 2]
      arr_options = [0, 1]

      cur_row = row_options.sample
      cur_col = col_options.sample
      cur_arr = arr_options.sample

      chosen_behaviour = bee_behaviours[cur_row][cur_col][cur_arr]
      confidence_score = swarm.classify(chosen_behaviour) 

      if chosen_behaviour == ideal_behaviour
        if    "sting"          == chosen_behaviour; puts confidence_score; Animal::Bee.sting
        elsif "consume nectar" == chosen_behaviour; puts confidence_score; Animal::Bee.consume_nectar
        elsif "bore holes"     == chosen_behaviour; puts confidence_score; Animal::Bee.bore_holes
        end
      else
        puts ">> #{$enemy_name} failed to think an specific action."
      end

      Human::Person.text_parser
    end

    def self.generate_colony
      # The current be location or swarm.
      bee_location = [
        [["b      ", "b      "], ["b      ", " b     "], ["b      ", "  b    "], ["b      ", "   b   "], ["b      ", "    b  "], ["b      ", "     b "], ["b      ", "      b"]],
        [[" b     ", "b      "], [" b     ", " b     "], [" b     ", "  b    "], [" b     ", "   b   "], [" b     ", "    b  "], [" b     ", "     b "], [" b     ", "      b"]],
        [["  b    ", "b      "], ["  b    ", " b     "], ["  b    ", "  b    "], ["  b    ", "   b   "], ["  b    ", "    b  "], ["  b    ", "     b "], ["  b    ", "      b"]],
        [["   b   ", "b      "], ["   b   ", " b     "], ["   b   ", "  b    "], ["   b   ", "   b   "], ["   b   ", "    b  "], ["   b   ", "     b "], ["   b   ", "      b"]],
        [["    b  ", "b      "], ["    b  ", " b     "], ["    b  ", "  b    "], ["    b  ", "   b   "], ["    b  ", "    b  "], ["    b  ", "     b "], ["    b  ", "      b"]],
        [["     b ", "b      "], ["     b ", " b     "], ["     b ", "  b    "], ["     b ", "   b   "], ["     b ", "    b  "], ["     b ", "     b "], ["     b ", "      b"]],
        [["      b", "b      "], ["      b", " b     "], ["      b", "  b    "], ["      b", "   b   "], ["      b", "    b  "], ["      b", "     b "], ["      b", "      b"]],
      ]

      bee_row_options = [0, 1, 2, 3, 4, 5, 6]
      bee_col_options = [0, 1, 2, 3, 4, 5, 6]
      bee_arr_options = [0, 1]

      bee_cur_row = bee_row_options.sample
      bee_cur_col = bee_col_options.sample
      bee_cur_arr = bee_arr_options.sample

      # The Hive the bee spawns out of.
      hive_location = [
        [["H      ", "H      "], ["H      ", " H     "], ["H      ", "  H    "], ["H      ", "   H   "], ["H      ", "    H  "], ["H      ", "     H "], ["H      ", "      H"]],
        [[" H     ", "H      "], [" H     ", " H     "], [" H     ", "  H    "], [" H     ", "   H   "], [" H     ", "    H  "], [" H     ", "     H "], [" H     ", "      H"]],
        [["  H    ", "H      "], ["  H    ", " H     "], ["  H    ", "  H    "], ["  H    ", "   H   "], ["  H    ", "    H  "], ["  H    ", "     H "], ["  H    ", "      H"]],
        [["   H   ", "H      "], ["   H   ", " H     "], ["   H   ", "  H    "], ["   H   ", "   H   "], ["   H   ", "    H  "], ["   H   ", "     H "], ["   H   ", "      H"]],
        [["    H  ", "H      "], ["    H  ", " H     "], ["    H  ", "  H    "], ["    H  ", "   H   "], ["    H  ", "    H  "], ["    H  ", "     H "], ["    H  ", "      H"]],
        [["     H ", "H      "], ["     H ", " H     "], ["     H ", "  H    "], ["     H ", "   H   "], ["     H ", "    H  "], ["     H ", "     H "], ["     H ", "      H"]],
        [["      H", "H      "], ["      H", " H     "], ["      H", "  H    "], ["      H", "   H   "], ["      H", "    H  "], ["      H", "     H "], ["      H", "      H"]],
      ]

      hive_row_options = [0, 1, 2, 3, 4, 5, 6]
      hive_col_options = [0, 1, 2, 3, 4, 5, 6]
      hive_arr_options = [0, 1]

      hive_cur_row = bee_row_options.sample
      hive_cur_col = bee_col_options.sample
      hive_cur_arr = bee_arr_options.sample

      current_hive = hive_location[hive_cur_row][hive_cur_col][hive_cur_arr]
      current_bee =  bee_location[bee_cur_row][bee_cur_col][bee_cur_arr]

      puts current_hive
      puts current_bee

      Animal::Bee.behaviours
    end

    #####################################################################################################################################
    # I            f enemy is injured, it will sting the player for a random number equivalent to the amount of HP it lost.             #
    #####################################################################################################################################
    def self.sting
      damage_lost  = $total_enemy_hp - $enemy_hp
      damage_given = rand(damage_lost)

      player_damage_from_defence = damage_given - $player_heal

      $player_hp = $player_hp - player_damage_from_defence

      puts ">> #{$enemy_name} damages #{$your_name} for #{damage_given} hp."
    end

    #####################################################################################################################################
    #             In theory, consumes plant nectar healing itself based on a random number based on the number of hp it lost.           #
    #####################################################################################################################################
    def self.consume_nectar
      damage_lost   = $total_enemy_hp - $enemy_hp
      damage_healed = rand(damage_lost)

      $enemy_hp = $enemy_hp + damage_healed

      puts ">> #{$enemy_name} is healed for #{damage_healed} HP."
    end

    #####################################################################################################################################
    #                               Randomly generate new colonies once the enemy is closer to death.                                   #
    #####################################################################################################################################
    def self.bore_holes
      if $enemy_hp < 1
        Animal::Bee.generate_colony
      else
        puts ">> #{$enemy_name} lives to buzz another day."
      end
    end
  end
end
