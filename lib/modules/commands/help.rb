module Bot
  module DiscordCommands
    # Document your command
    # in some YARD comments here!
    module Help
      extend Discordrb::Commands::CommandContainer
      command :rubyhelp do |event|
        event.user.pm "Here ya go pal
```.yt (query) - Search youtube for vids
.g (query) - Search google
.protips (query) - Search for a random post from Art Protips
.tumblr (blog name) (tag) - Search a tumblr blog
.8ball (query) - Ask the magic 8ball
.rt (query) - Talk to ruby
.pet - Pet ruby
sprits sprits/:sweat_drop: :cat: - spray ruby with water
Ruby!/RUBY - yell at ruby
ruby rpg - start an rp (alpha)
```"
      end
    end
  end
end