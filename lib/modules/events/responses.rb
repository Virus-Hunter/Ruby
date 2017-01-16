module Bot
  module DiscordEvents
    # PResponses
	# A bunch of different responses
    module Responses
      extend Discordrb::EventContainer
	  
	  
      message(with_text: /ruby help|help ruby/) do |event|
	event.respond "*pssst...*`.rubyhelp`"
	end
      
	  message(contains: /right, ruby?|right, rubes?|right ruby?|right rubes?|right Ruby?|right Rubes?|right, Ruby?|right, Rubes?|ruby agrees|rubes agrees/) do |event|
	  break unless event.message.content[0..2] != ".rt"
    event.respond ['Uh...yeah, _suuuuuure_', 'Uh-uh. You\'re not pullin me into this one.', 'Damn right!', 'Sorry what? Wasn\'t listenin', 'Nice try, I ain\'t fallin\' for that', 'uhHHH I\'M AWAKE!', 'Sure, why not', 'Ye- no.', '...yyyyyyyyyes?', 'Not today, bud.'].sample
  end
  
  message(contains: /ruby knows|rubes knows|Ruby knows|Rubes knows|ruby always knows|rubes always knows|Ruby always knows|Rubes always knows/) do |event|
  break unless event.message.content[0..2] != ".rt"
    event.respond ["Don't I always?", 'I *told* ya!', '*When has a black cat ever steered you wrong?*', 'Well, I _do_ have 9 lives of experience...', "I'm glad _someone_ appreciates me!", "Hey, that's just how it is.", "Heh heh...*flattery will get you **everywhere** with this girl*", "*As usual!*"].sample
  end
	  
	 message(contains: /thanks ruby|thx ruby|thanks rubes|thx rubes|Thx ruby|Thx rubes|Thx Ruby|Thx rubes/) do |event|
	 break unless event.message.content[0..2] != ".rt"
    event.respond ["Don't mention it", "No prob, bob", "No probalo", "Yer welcome", "My pleasure"].sample
	end
	
	message(contains: /can i be your boyfriend ruby|can i be ur bf ruby|can I be your boyfriend ruby|can I be ur boyfriend ruby|can I be ur bf ruby|can I be your bf ruby|ruby can i be ur boyfriend|ruby can i be your boyfriend|ruby can i be ur bf|ruby can i be your bf/) do |event|
	break unless event.message.content[0..2] != ".rt"
  event.respond ["*No.*", "Nope", "Sorry but no", "Nah"].sample
	end

message(contains: /sprits ruby|sprits rubes|give ruby the sprits|give rubes the sprits/) do |event|
break unless event.message.content[0..2] != ".rt"
    event.respond ['no DON\'T SPRITS RUBY','_nO_', 'DON\'T YOU DARE', 'PLEASE DO _NOT_ WATER THE CAT'].sample
  end
  
	message(contains: /dance, ruby|dance ruby|dance for me ruby|dance for us ruby|ruby wanna dance|ruby want to dance|ruby now you gotta dance/) do |event|
	break unless event.message.content[0..2] != ".rt"
    event.respond ['What do I look like to you? A _floozie?_','Are you _serious_?','Sorry pal but they dont pay this girl _nearly_ enough for that','Ehhhheheheheh, _good one_',':unamused:'].sample
  end
  
  message(with_text: /look what you did ruby|ruby why|Ruby why/) do |event|
    event.respond ['I\'m a cat, it\'s what I do', '*Suuuuure*, blame the cat', 'Trust me pal, I did ya a favor', 'The inner workings of my mind are an *enigma*', ']¦3'].sample
  end  
  
  botID = CONFIG.botID
  
  message(with_text: /info about <@#{botID}>|info about <@#{botID}> |info about ruby|who made <@#{botID}>?|who made <@#{botID}>|who made <@#{botID}> |introduce yourself <@#{botID}>|introduce yourself <@#{botID}> |introduce yourself, ruby|introduce yourself ruby|who made ruby|who made ruby?/) do |event|
  event.respond "Ruby's the name, and *Ruby*'s my frame. I'm <@#{CONFIG.owner}>'s cat. Type `.rubyhelp` for command stuff."
end




  message(with_text: /morning ruby|Morning ruby|mornin ruby|morning rubes|mornin rubes|Morning rubes|Mornin rubes|Mornin ruby/) do |event|
  event.respond ["_YAWWWNNNnnnn_...mornin", "Mmmmmm, good mornin","Mornin","Ehhhh..._is it really morning already?_","Mornin mornin mornin...",":coffee: :cat:", "Same to you!"].sample
end

message(with_text: /Good night ruby|good night ruby|goodnight ruby|Goodnight ruby|Good night rubes|good night rubes|Goodnight rubes|goodnight rubes|night ruby|Night ruby|night rubes|Night rubes/) do |event|
  event.respond ["*YAAAWWnnnn...*I think I might join ya soon", "Goodnight","Gnight!","Night","Cya", "Nighty night", "Have a good one","Sleep tight, buddy", "Sweet dreams", "Buh-bye", "Adios!", "Cya bud"].sample
end
  
message(with_text: /hi ruby|hi rubes|hey rubes|hey ruby|hello ruby|hello rubes|Hi Ruby|Hi Rubes|Hey Ruby|Hey Rubes|Hi ruby|Hi rubes|Hey ruby|Hey rubes/) do |event|
  event.respond ['Hiya', 'Yo', "What's shakin?", 'Hey', ':point_left: Eyyy', 'Hey pal', ":wave:", "How's it goin'", "How goes it?", "How ya doin"].sample
end


    end
  end
end
