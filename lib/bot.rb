# Gems
require 'bundler/setup'
require 'discordrb'
require 'gemstone'
require 'yourub'
require 'tumblr_client'
require 'twitter-text'
require 'google_custom_search_api'
require 'nokogiri'
require 'json'
require 'httparty'
require 'pry'
require 'john-doe'
require 'rubygems'
require 'cleverbot'
require 'open-uri'



	

#UrlParser class
class UrlParser
    include Twitter::Extractor
end
client2 = Tumblr::Client.new



# The main bot module.
module Bot
  # Load non-Discordrb modules
  Dir['lib/modules/*.rb'].each { |mod| load mod }

  # Bot configuration
  CONFIG = Config.new

  # Create the bot.
  # The bot is created as a constant, so that you
  # can access the cache anywhere.
  BOT = Discordrb::Commands::CommandBot.new(client_id: CONFIG.client_id,
                                            token: CONFIG.token,
                                            prefix: CONFIG.prefix)

  # Discord commands
  module DiscordCommands; end
  Dir['lib/modules/commands/*.rb'].each { |mod| load mod }
  DiscordCommands.constants.each do |mod|
    BOT.include! DiscordCommands.const_get mod
  end

  # Discord events
  module DiscordEvents; end
  Dir['lib/modules/events/*.rb'].each { |mod| load mod }
  DiscordEvents.constants.each do |mod|
    BOT.include! DiscordEvents.const_get mod
  end

  # Run the bot
  BOT.run
end
