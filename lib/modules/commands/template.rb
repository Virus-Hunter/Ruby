module Bot
  module DiscordCommands
    # Document your command
    # in some YARD comments here!
    module CommandTemplate
      extend Discordrb::Commands::CommandContainer
      command :my_command do |event|
        # do discord things!
      end
    end
  end
end