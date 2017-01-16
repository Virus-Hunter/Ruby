module Bot
  module DiscordCommands
   #Pet command
	#Give Ruby a pet
    module Pet
      extend Discordrb::Commands::CommandContainer
      command :pet do |event|
        petnum = rand(1..10)
	if petnum >= 8
	rubnum = rand(350..500)*2
    petchoice1 = ["Yeah yeah YEAH right there, that's the spot","Mmmph just dig right in there","Get right behind the ear, ooohh YEAH DON'T STOP"].sample
    petchoice2 = ["Critical pet! You deal #{rubnum} rubs!"].sample
	event.respond "#{petchoice1}\n`#{petchoice2}`"
	
    elsif petnum >= 3
	rubnum = rand(200..500)
    petchoice1 = ["Mmmph, thanks for the scrub bub", "Move up a bit...yeeeahhh","Oh, oh yeah...that's good."].sample
	petchoice2 = ["You rub Ruby for #{rubnum} rubs"].sample
	event.respond "#{petchoice1}\n`#{petchoice2}`"
    
    else
	rubnum = rand(1..100)
    petchoice1 = ["Oh uh...thanks","Mm...that's a little better","Don't think I haven't forgotten about earlier..."].sample
	petchoice2 = ["You do a poor job, dealing #{rubnum} rubs"].sample
	event.respond "#{petchoice1}\n`#{petchoice2}`"
  end
      end
    end
  end
end