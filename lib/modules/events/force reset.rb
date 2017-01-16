module Bot
  module DiscordEvents
    # This force resets Ruby, loading any code changes you may have made.
	# Only the bot owner can use this command.
    module ForceRestart
      extend Discordrb::EventContainer
      message(from: CONFIG.owner, with_text: /restart ruby|restart rubes|ruby restart|rubes restart|ruby reset|rubes reset|Ruby reset/) do |event|
    event.respond ["Give me a moment or two", "Be back in a flash", "Restartin...", "Coffee break!", "`[Poorly made computer noises]`"].sample
    abort
  end
    end
  end
end