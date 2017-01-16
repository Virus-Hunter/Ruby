module Bot
  module DiscordEvents
    # Ping event
    # See if Ruby is awake! 
    module Ping
      extend Discordrb::EventContainer
	  
      message(with_text: /^(RUBY|ruby!|RUBY!|RUBES|Ruby!|Rubes!|RUBES!|R U B Y)$/) do |event|
  event.respond ["...hhhhhHHHH HUH WHA?!?", "I'm right here!", "...you don't have to yell", "I'm here, jeez", "WHAT?", "YES?", "Not so loud! _I've got cat-like hearin ya know..._"].sample
end
      
	  
    end
  end
end