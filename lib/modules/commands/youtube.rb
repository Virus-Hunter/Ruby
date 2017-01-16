module Bot
  module DiscordCommands
    # Youtube command
    # Searches for youtube vids
    module Youtube
        
        #Youtube credentials
options = { developer_key: CONFIG.youtubeDeveloperKey,
             application_name: 'yourub',
             application_version: 2.0,
             log_level: 3 }
             client = Yourub::Client.new(options)
        
        
      extend Discordrb::Commands::CommandContainer
      command(:yt) do |event|
	  
	  break unless event.user.bot_account == false
  client = Yourub::Client.new
  video = "#{event.message.content[3..-1]}"
  client.search(query: video, max_results: '1') do |resultY|
    id = resultY['id']
      event.respond ["Is this what ya wanted? https://youtu.be/#{id}", "Here ya go https://youtu.be/#{id}", "I gotcha https://youtu.be/#{id}", "This it? https://youtu.be/#{id}", "Enjoy! https://youtu.be/#{id}","Voila! https://youtu.be/#{id}"].sample
      client = 1
      end
  if client != 1
    event.respond ["Sorry pal, couldn't find anything.", "No results. Maybe you typed it wrong?", "Nothin showed up.", "Zero hits, pal.", "There ain't nothin here!", "Nadda. You sure that's spelt right?"].sample
  end
      end
    end
  end
end