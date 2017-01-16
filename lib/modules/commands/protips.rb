module Bot
  module DiscordCommands
    # Protips command
    # Searches Artprotips for random posts based on the query
    module Protips
      extend Discordrb::Commands::CommandContainer
	  
	  #Tumblr Credentials
Tumblr.configure do |config|
  config.consumer_key = CONFIG.tumblrConsumerKey
  config.consumer_secret = CONFIG.tumblrConsumerSecret
  config.oauth_token = CONFIG.tumblrOAuthToken
  config.oauth_token_secret = CONFIG.tumblrOAuthTokenSecret
end
	  
      command :protips do |event|
          break unless event.user.bot_account == false
		  puts "protips triggered"
  client2 = Tumblr::Client.new
  resultT = (client2.posts 'artprotips.tumblr.com', :tag => event.message.content[8..-1])
 returnT = UrlParser.new.extract_urls("#{resultT}")
  returnT.delete_if {|x| x =~ /.com/}
  pturl = returnT.sample
  if returnT == []
    event.respond ["That's a shame, couldn't find anything.", "It seems I'm fresh outta tips for that!", "Nothin' on that I'm afraid...", "No results...*ᴵ ᵇᶫᵃᵐᵉ ⱽᴴ*", "Sorry pal, I got nothin!"].sample
  else
  event.respond ["Give this a look thru! #{pturl}", "This help? #{pturl}", "Hope it helps! #{pturl}", "Here's a good one! #{pturl}", "One protip, comin' up! #{pturl}", "This one looks _real helpful_ #{pturl}", "Here's a fresh hot tip for ya! #{pturl}", "Try this on fer size! #{pturl}"].sample
  end
      end
    end
  end
end