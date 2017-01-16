module Bot
  module DiscordCommands
    # Changes the game that Ruby is currently playing
	# if just ".rubyplay" is typed, ruby will stop playing
	# Only the bot owner can use this command
    module CurrentlyPlaying
      extend Discordrb::Commands::CommandContainer
      command(:rubyplay, from: CONFIG.owner) do |event, *game|
	  game = game.join(' ')
	  if game == ""
	  event.bot.game = nil
	  nil
	  else
       event.bot.game = game
	   nil
	   end
      end
    end
  end
end