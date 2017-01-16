module Bot
  module DiscordCommands
    # Searches for stuff on google
    module Google
      extend Discordrb::Commands::CommandContainer
	  GOOGLE_API_KEY = CONFIG.googleAPIKey
	  GOOGLE_SEARCH_CX = CONFIG.googleSearchCX
	  
	  
      command :g do |event|

page = open "http://www.google.com/search?site=&source=hp&q=#{event.message.content[3..-1]}"
html = Nokogiri::HTML page
returnG = html.search("cite")
if returnG[0].inner_text[0..3] != "http"
returnG = returnG[0].inner_text.insert(0, 'https://')
else
returnG = returnG[0].inner_text
end
event.respond ["Ba-BAM! #{returnG}", "One hot link, comin up! #{returnG}", "Here ya go! #{returnG}", "Kaboom! #{returnG}", "From downtown! #{returnG}"].sample
#returnG = UrlParser.new.extract_urls("#{cite.inner_text}")
#gurl = returnG[0]
#event.respond "#{returnG[0]}"
end
    end
  end
end