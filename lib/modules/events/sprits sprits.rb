module Bot
  module DiscordEvents
    # Sprits Sprits
	# Punish ruby for being dum
    module SpritsSprits
      extend Discordrb::EventContainer
     message(contains: /💦 🐱|💦🐱|sprits sprits|Sprits Sprits|spritssprits|SpritsSprit|Sprits sprits/) do |event|
event.respond ["https://my.mixtape.moe/jbisds.png", '_**HISS**_', '`-Loud cat noises-`', 'WHAT\'S A MATTA WIT YOU?!','ACK', 'WHY?!?', 'THAT _BETTER_ BE PLAIN _WATER_!', 'I\'M DROWNIN\' HERE!', '_ANIMAL ABUSE!_', ].sample
    
    
    
    
    # if moodnum <= 0
    #    event.respond ['JEEZ LOUISE WAS THAT NECESSARY?', 'GET OVER HERE I\'M GONNA SLAP YA REAL GOOD BUDDY', 'OH MY GOD ***STOP***', 'Have you considered ***NOT SPRAYING ME WITH WATER?***', 'WUNNA THESE DAYS, POW RIGHT IN THE KISSA', "I HAVE JUST ABOUT HAD IT UP TO **HERE** WITH YER SHENANIGANS, _BUDDY_", "`-Loud black panther noises-`", "CAN YOU _NOT?_"].sample
    #    lashout +=1
   # if lashout >= 5
   #   lashout = 0
   #   sleep(5)
   #   event.respond [":triumph: You know what pal? _I'll_ be the adult here and ask nicely. Can you _please_ stop? THANK YOU.", "Alright buddy...you're here...*I'm* here...we're stuck with each other! So can we PLEASE get along?","*SIGH* Can we PLEASE, *PLEASE* just stop all this? I gotta go dry off!", "I'm done. I'm done! I am TOO WET to be mad anymore.", "Congradualtions buddy, you've got yourself a living wet towel. I hope you don't mind me _dragging water everywhere_! BECAUSE I DO.", "Alright, alright. We've had some laughs, I'm completely soaked...let's let bygones be bygones, okay pal?", "_Hahahahahaha let's spray the cat! It'll be **fuuuuun**!_ You're a real piece a work, pal."].sample
    #  moodnum = 70
   # elsif moodnum >= 0
   # event.respond ["https://my.mixtape.moe/jbisds.png", '_**HISS**_', '`-Loud cat noises-`', 'WHAT\'S A MATTA WIT YOU?!','ACK', 'WHY?!?', 'THAT _BETTER_ BE PLAIN _WATER_!', 'I\'M DROWNIN\' HERE!', '_ANIMAL ABUSE!_', ].sample
    #moodnum += -20
   # end
    # end
   # if moodnum <= 0
    #  moodnum = 0
    #end
      end
    end
  end
end