module Bot
  module DiscordCommands
    # Old google image searcher
	# Could only ever get thumbnails, so is disabled for now
    module GoogleImage
      extend Discordrb::Commands::CommandContainer
	  
command(:gi) do |event|
page = open "https://www.google.com/search?site=&tbm=isch&source=hp&biw=1536&bih=738&q=#{event.message.content[4..-1]}"
#find the src 
html = Nokogiri::HTML page
returnI = html.search("url")
#returnI = UrlParser.new.extract_urls("#{returnI}")
returnI.each do |find|
  puts find
end
#event.respond ["Ba-BAM! #{returnG[0].inner_text}", "One hot link, comin up! #{returnG[0].inner_text}", "Here ya go! #{returnG[0].inner_text}", "Kaboom! #{returnG[0].inner_text}", "From downtown! #{returnG[0].inner_text}"].sample

end
	  

      end
    end
  end