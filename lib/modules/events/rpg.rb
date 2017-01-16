module Bot
  module DiscordEvents
    # RP test
	# Basics for an adventure game engine
    module RPG
      extend Discordrb::EventContainer
	  
	  #database loading
	  require_relative 'rpgstory'
	  require_relative 'rpgchoice'
	  RPGStory.new
	  RPGChoice.new
	  
	  
	stage = "start"
	choicepart = "start"
	choiceoutput = "start"
	rpend = true
	channel = "0"
	
	message(with_text: "stop rpg") do |event|
	break unless event.user.bot_account == false
	if channel == "0"
	event.respond "There ain't even a game goin on right now!"
	elsif channel !=  event.channel
		event.respond "There's already an RP goin on somewhere"
		else
		if stage != "start"
			event.respond "Endin the game"
			stage = "start"
			rpend = true
			channel = "0"
			end
		end
		end
	
	message(with_text: 'rpg options') do |event|
	break unless event.user.bot_account == false
	if channel !=  "0"
		event.respond "There's already an RP goin on somewhere"
		else
		if stage == "start"
			event.respond "No options at the moment"
		else
			choicepart = RPGChoice.send(stage)
			choicepart = choicepart.map.with_index(1) { |el, i| "`#{i}) #{el}`" }.join("\n")
			event.respond "#{choicepart}
`Select an option by entering its number
Enter 'stop rpg' to end at any time`"
			end
		end
		end
		
		
	message(with_text: 'ruby rpg stage') do |event|
	break unless event.user.bot_account == false
		event.respond "The story is at stage #{stage}"
		end
	
	message(with_text: 'ruby rpg') do |event|
	break unless event.user.bot_account == false
	if ((channel !=  event.channel)&&(channel != "0"))
		event.respond "There's already an RP goin on somewhere"
		elsif ((channel == event.channel)&&(stage != "start"))
		event.respond "The RP's already started!"
		elsif stage == "start"
			channel = event.channel
			stage = "idle"
			rpend = false
			choicepart = RPGChoice.send(stage)
			choicepart = choicepart.map.with_index(1) { |el, i| "`#{i}) #{el}`" }.join("\n")
			event.respond "#{RPGStory.send(stage)}
#{choicepart}
`Select an option by entering its number
Enter 'stop rpg' to end at any time`"
		end
	end
		
	#message(with_text: '99') do |event|
		#userinput = (("#{event.message.content}".to_i) - 1)
		#event.respond "#{userinput}"
		
		#f "#{userinput}".to_i == 98
		#event.respond "This is 98!"
		#else
		#event.respond "It didnt work..."
		#end
		#end
		
	message(with_text: "ruby rpg format test") do |event|
	
	choiceString = RPGChoice.a0
	choiceString = choicepart.map.with_index(1) { |el, i| "#{i}) #{el}" }.join("\n")
	event.respond "Check! 
#{testString}"
	end
	
	message(with_text: /1|2|3|4|5|6|7|8|9/) do |event|
	if event.user.bot_account == false
	if channel == event.channel
	userinput = (("#{event.message.content}".to_i) - 1)
		if ((stage != "start")&&(RPGChoice.send(stage)["#{userinput}".to_i] != nil))
			#event.respond "It worked!"
			stage << "choice"
			stage = RPGChoice.send(stage)["#{userinput}".to_i]
			#enter stages that end the rpg below
			if %w(a1a a1b a1c idle2).include? stage
			event.respond "#{RPGStory.send(stage)}"
				channel = "0"
				stage = "start"
				rpend = true
			else
			
				choicepart = RPGChoice.send(stage)
			choicepart = choicepart.map.with_index(1) { |el, i| "`#{i}) #{el}`" }.join("\n")
			event.respond "#{RPGStory.send(stage)}
#{choicepart}"
					end
			end	
end
end
end
		
		message(with_text: "ruby channel save") do |event|
		channel = event.channel
		if channel == nil
		event.respond "Uh oh, couldn't save the channel"
		else
		event.respond "Channel #{channel} saved!"
		end
		end
		
		message(with_text: "ruby channel clear") do |event|
		channel = "0"
		break unless channel == "0"
		event.respond "Channel has been cleared"
		end
		
		message(with_text: "ruby channel check") do |event|
		if channel == "0"
		event.respond "There's no saved channel at the moment"
		else 
		event.respond "Current channel is #{channel}"
		end
		end
		
		message(with_text: "ruby channel confirm") do |event|
		if channel == event.channel
			event.respond "This is the saved channel!"
		elsif channel == "0"
		event.respond "There's no saved channel at the moment"
		else
			event.respond "This ain't the saved channel..."
			end
			
			
			
			
		end
		end
		end
		end