module Bot
  module DiscordCommands
    #Tumblr search
	# Search for tumblr blogs!
    module TumblrSearch
      extend Discordrb::Commands::CommandContainer
      	  command :tumblr do |event|
	  break unless event.user.bot_account == false
	  client2 = Tumblr::Client.new
	  separaT = "#{event.message.content[8..-1]}".split(" ")
	  resultT = (client2.posts "#{separaT[0]}.tumblr.com", :tag => separaT[1..-1])
	  if separaT[0] == nil
	  event.respond "Ya forgot to put in a blog name. It's `.tumblr [blog name] [tags]`."
	  else
	  returnT = UrlParser.new.extract_urls("#{resultT}")
  returnT.delete_if {|x| x =~ /.com/}
  returnT.delete_if {|x| x =~ /.png/}
  returnT.delete_if {|x| x =~ /.jpg/}
  returnT.delete_if {|x| x =~ /.gif/}
  tumurl = returnT.sample
  if returnT == []
    event.respond ["That's a shame, couldn't find anything.", "Nothin' on that I'm afraid...", "No results...*ᴵ ᵇᶫᵃᵐᵉ ⱽᴴ*", "Sorry pal, I got nothin!"].sample
  else
  answerT = ["Here's somethin!", "How about this?", "This whatcha want?", "Here ya go!", "BAM!", "One blog post, fresh off the presses!", "A tumbl for your troubles?"].sample
  event.respond "#{answerT} #{tumurl}"
  end
  end
      end
    end
  end
  end