module Bot
  module DiscordCommands
 # Chatbot command
 # Talk directly with Ruby!
    module Chatbot
      extend Discordrb::Commands::CommandContainer
	  cb = JohnDoe::ChatBot.new("rubyAI.yml", "rubyAIquotes.txt")
	  refName = "good times"
	  clevbot = Cleverbot.new(CONFIG.clevbotAPIUser, CONFIG.clevbotAPIKey)
	  
      command :rt do |event|
	  cbInput = "#{event.message.content[4..-1]}"
	  break if cbInput == ""
	  response = cb.get_response cbInput
	  if response.text == "I don't understand"
	  clbRespond = clevbot.say cbInput
	  event.respond "#{clbRespond}".capitalize
	  else
	  event.respond "#{response.text}".capitalize
	  end
	  end
        # do discord things!
		
    end
  end
end