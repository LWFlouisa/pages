require_relative "Battlers/minotaur.rb"

# Displays the title screen.
Minotaur::Title.display

# Gets the player's name.
Minotaur::Player.get_player_name

# Uses previous hero's name as player mentor. Determines prize probability based on politeness score.
Minotaur::NPC.mentor
Minotaur::NPC.mentor_labels
Minotaur::NPC.mentor_probability

# Get global stats.
Minotaur::LunarCalender.global_stats

# Begin text parser.
Minotaur::Player.text_parser
