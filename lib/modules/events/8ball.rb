module Bot
  module DiscordEvents
    # 8ball event
	# Couldn't make a command that started with a number so it's an event instead!
    module Eightball
      extend Discordrb::EventContainer
      message(contains: '.8ball') do |event|
	  if event.message.content[0..5] == ".8ball"
	  break unless event.user.bot_account == false
  sleep(0.5)
  event.respond ['Gaze into this here magic eight ball...', 'Let\'s give the ol\' ball a shake', 'Alright...just give me a moment', 'Round and round and round she goes!', 'May the cheap novelty gods shine upon you...', 'Oh mighty eight ball, bless us with yer wisdom!', 'Blah blah blah hocus pocus whatevah', 'Drum roll, please!', 'Okay, but don\'t complain if you don\'t like it!'].sample
  sleep(3)
  if event.message.content.include? 'chaloopy'
  event.respond ['Oh would you look at that...*You must learn to let go*', 'Woah huh...its showin me this weird picture https://my.mixtape.moe/csivno.png', 'Hmm...*Chaloopy is dumb and yer also dumb*...thats oddly specific', '*There is no Chaloopy*...Thats...strange', '*Chaloopy? Thats what you are right now!* Heh heh heh', '`Muffled HEE-HEEEEs in the distance`'].sample
  else
  ballchoice1 = ['It says...', 'Lemme see here...', 'Hmm...', 'Well I\'ll be, ', 'Holy moly...', 'This glass ain\'t too clear...', 'Here we go...', 'Let\'s see...'].sample
  ballchoice2 = ['_outlook good!_', '_outlook not so good._', 'ask again later. Huh.', '_it is certain!_', '_yes, definitely!_', 
  '_you may rely on it._ Whatevah that means...', '_as I see it, yes._', '_most likely._', 'reply _hazy?!_ Piece \'a junk!', '_yes._ Short \'n sweet.', '_survey says yes!_', 
  '_ask again later._ This ball think it\'s better than us or somethin?', '_cannot predict now._ And _that\'s_ why you don\'t rely on magic.', '_concentrate and ask again._ Wait a sec, aren\'t YOU supposed to be the all knowin\' one?',
  '_don\'t count on it._', '_my reply is no._', '_survey says no._', '*very doubtful...*', 'uh oh...*better not tell you now.*'].sample
  event.respond "#{ballchoice1}#{ballchoice2}"
  end
  end
  end
  
  message(contains: 'ruby human check') do |event|
  if event.user.bot_account == true
	event.respond "You're a bot!"
	else
	event.respond "You're not a bot!"
	end
	end
  
    end
  end
end