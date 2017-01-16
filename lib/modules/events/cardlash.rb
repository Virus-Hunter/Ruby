module Bot
  module DiscordEvents
 # Prototype for a Cards Against Humanity type of game
 # Doesn't actually work, just trying out different things here
    module Cardlash
      extend Discordrb::EventContainer
# put code here
player1 = "0"


message(with_text: "ruby say my name") do |event|
event.respond "#{event.user.name}!"
end

message(with_text: "ruby show id") do |event|
event.respond "#{event.bot.profile.id}"
end
      
    end
  end
  end