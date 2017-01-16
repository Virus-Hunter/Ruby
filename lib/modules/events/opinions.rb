module Bot
  module DiscordEvents
    # Opinions
	# Ask ruby for her opinion
    module Opinions
      extend Discordrb::EventContainer
      message(contains: /ruby what do you think|Ruby what do you think|ruby, what do you think|Ruby, what do you think|RUBY whatcha think|ruby whatcha think|Ruby whatcha think|rubes whatcha think|Rubes whatcha think|ruby how do you feel about|Ruby how do you feel about|ruby whatcha think about|Ruby whatcha think about|ruby what's your opinion on|ruby what is your opinion on|Ruby what's your opinion on|ruby what's ur opinion on|ruby what is ur opinion on|Ruby what's ur opinion on |Ruby what is your opinion on|Ruby what is ur opinion on|ruby where the memes at|ruby where the dank memes at|ruby give me memes|look ruby, memes/) do |event|
opinionmessage = event.message.content

#puts ((opinionmessage.include? "'s")&&((message[-1]!='s')&&(message[-2..-1]!='s?')))
  if ((opinionmessage.include? 'dick')||(opinionmessage.include? 'dong')||(opinionmessage.include? 'cock')||(opinionmessage.include? 'penis')||(opinionmessage.include? 'vagina')||(opinionmessage.include? 'kooch')||(opinionmessage.include? 'cunt')||(opinionmessage.include? 'cummies')||(opinionmessage.include? 'cum')||(opinionmessage.include? 'butt')||(opinionmessage.include? 'ass')||(opinionmessage.include? 'anus')||(opinionmessage.include? 'lewd')||(opinionmessage.include? 'sex')||(opinionmessage.include? 'boob')||(opinionmessage.include? 'breasts'))
    event.respond ["Woah there pal, keep those kinds a questions *in yer pants*.", "You don't just go up and ask a girl a thing like that!", "Look, I know *where we are* but let's try to keep things a *little* clean, shall we?", "I'm not touchin that one with a 59 and a half foot pole", "In this particular situation..._a cat is **not** fine._", "Doncha think that's a little *personal*?", "Hey, don't look at me! _I just work here._", "You guys can keep that kinda stuff to yerselves", "My thoughts on those particular things are only fer me and whatevah boyfriend I currently got", "How bout instead of askin *a cat* about this stuff you go an ask oh I dunno...*anyone else?*"].sample
    
    elsif (opinionmessage.include? 'meme')
    event.respond ["Ha ha, I get it...*cat*...*memes*...we just go together, right?", 'Memes are the worst form a comedy out there. It\'s literally *"I understood that reference"*, the genre!', 'My favorite meme is the "victim attacked by cat after mentioning memes" meme!', "*SURELY* you got a better place to go meme huntin than here, pal.", "Yeah you think yer a *reeeaaaal* chucklehead, huh? Think yer *reeeaaaal* funny with them inside jokes? Is that whatcha think, *buddy?*", "Hold on a second, how *old* are ya exactly?", "Reddit called, they want their *lack of originality* back", "Do you know how hard it is fer a cat in today's meme-filled world?", "Oh, lookit you, yer a *real* meme machine ain'tcha", "Please, no memes."].sample
  
    elsif ((opinionmessage.include? 'coffee')||(opinionmessage.include? 'expresso')||(opinionmessage.include? 'cappucino')||(opinionmessage.include? 'latte')||(opinionmessage.include? 'americano')||(opinionmessage.include? 'frappe'))
    event.respond ["I love the stuff!", "Coffee is good. *Coffee's always good!*", "Of course I like it! What were you expectin?", "Let it be known that I'm a fan of all kinds a joe.","It's got an interestin flavor, but that's what makes it unique!", "I like the bitterness of it", "Needs some sugar, but otherwise it's great!", "Why it's only *the best part a wakin up!*", "~Fresh, Fresh! *Excitiiiiiin!*~", "If it were possible, I'd have it hooked up to me through an IV", "Coffee has *always* been a thing of mine", "I can't start the day without it!", "A cup a joe and yer ready to go!", "*I guess I'm sorta addicted to it*...but is that *really* a bad thing?"].sample
    
     elsif (((opinionmessage.include? "'s")&&((opinionmessage[-1]!="s")&&(opinionmessage[-2..-1]!="s?")))||(opinionmessage.include? 'this')||(opinionmessage.include? 'that'))
    event.respond ["I actually kinda like it!", "It's okay I guess", "I'm not a fan", "It's interestin alright", "*...ehhhhhhh...*", "I think it's great!", "*It's horrible*", "It sorta ticks me off", "It's pretty dumb", "It's bad. *Real bad.*", "It stinks!", "It's amazin!", "Well uh...*it's...a thing!*", "It sure is *somethin* ain't it", "It ain't the greatest thing out there...", "I like it.", "It's pretty good!", "Let's just say it left a bad taste in my mouth", "There's some room for improvement but it's pretty alright."].sample
   else 
    event.respond ["I actually kinda like em!", "They're okay I guess", "I'm not a fan", "They're interestin alright", "*...ehhhhhhh...*", "I think they're great!", "*They're horrible*", "They sorta ticks me off", "They're pretty dumb", "They're bad. *Real bad.*", "They stink!", "They're amazin!", "Well uh...*they're...a thing!*", "They sure are *somethin* ain't they", "They ain't the greatest thing out there...", "I like em.", "They're pretty good!", "Let's just say they left a bad taste in my mouth", "There's some room for improvement but they're pretty alright."].sample

  end
end
      
    end
  end
end