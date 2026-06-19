#alphabet = [
#            "A", "B", "C", "D", "E",
#            "F", "G", "H", "J", "K",
#            "L", "M", "N",
#
#            "O", "P", "Q", "R", "S",
#            "T", "U", "V", "W", "X",
#            "Y", "Z", ".",
#].to_s

word_list = File.readlines("_data/words/word_options.txt")

alph_1 = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
alph_2 = "NOPQRSTUVWXYZABCDEFGHIJKLM"

## Save a copy of the keys for later decryption
open("_data/audit/keys.txt", "w") { |f|
  f.puts alph_1
  f.puts alph_2
}

choice_amount = word_list.size.to_i

ai_choice = word_list.sample.to_s.strip

puts ai_choice

open("_data/audit/ai_choices.txt", "a") { |f|
  f.puts ai_choice
}

word_prompt = ai_choice


max = 5
guesses = 0

loop do
  if guesses > max
    system("clear")

    image_status = File.read("_images/guillotined/death.txt")

    puts image_status

    puts "Sister Order ran out of guesses."

    system("ruby _endgame.rb/victory.rb")

    abort
  else
    system("clear")

    if guesses == 1
      image_status = File.read("_images/guillotined/minor.txt").strip

      puts image_status
    elsif guesses == 2
      image_status = File.read("_images/guillotined/mild.txt").strip

      puts image_status
    elsif guesses == 3
      image_status = File.read("_images/guillotined/moderate.txt").strip

      puts image_status
    elsif guesses == 4
      image_status = File.read("_images/guillotined/severe.txt").strip

      puts image_status
    elsif guesses == 5
      image_status = File.read("_images/guillotined/critical.txt").strip

      puts image_status
    end

    puts "You have #{guesses} remaining guesses."
  end

  puts word_prompt.tr alph_1, alph_2

  enemy_guesses = word_list.sample

  if guess == ai_choice
    puts "Sister chaos has correctly guessed the chosen word."

    sleep(1.5)

    system("clear; ruby spaceshooter.rb")
  else
    puts "
                                                 ...'
                   ';cool:            :'..           
                'xOxc,.            ;oodcdO:          
              'kO;              .ddc.    xK'         
            .oXl.                ox,     dkX         
           ,KO,               ,c .Ook:. .K.K:        
          ;Nd.            .:ol;  cX o0c  dcoX        
          xN'        .:xdlc'     dX,Kk   '0oN.       
          OX.      'XKWKkO.  'ccoKW0K'    O0N.       
          0X'      Ox.o       ..'XNKx.....dXN.       
          kN'     kK             'Wkdkkddc:KX        
          ON'     '.    .;::;.   .Nk       OX.       
         ;Nk            'kkdd;   .k:       kN.       
          d0l.       ;.  ,,;:..c         .xX;        
           :kKk.     .dx:. 'l0k;         od,         
          .   .'.'l0'   'cc:'.  o;.                  
       .cOx':dkKKOc.            .x0kc.               
      kKd. ldc,.                   'lk0o.kl'.        
     .;        .:lcc;..              .    ;kNd.      
                 .;ldkOkOkxO0000kdoxxl.     'lo   
"

    puts "Sister Order guessed incorrectly!"

    guesses = guesses + 1

    sleep(1.5)
  end
end
