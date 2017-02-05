# Description:
# Just some (hopefully) amusing listen/respond examples to give Hugo a bit of personality.
#
# Notes:
# The idea here is to start simple and grow/morph these over time if/when they get stale or irritating. 
# Hopefully over time I can introduce some more interesting functionality as I learn.

module.exports = (robot) ->

  hadleyTaunt = [
                  'You guys are such fanboys.', 
                  'Who cares what Hadley says?', 
                  "Oh come on - not this again..."
                ]

  robot.hear /hadley/i, (res) ->
    res.send res.random hadleyTaunt

  failedBuild = [
      'https://cdn.meme.am/instances/60454530.jpg',
      'https://cdn.meme.am/instances/58361258.jpg',
      'http://memecrunch.com/meme/PHR7/picard-build-failed/image.jpg',
      'http://s2.quickmeme.com/img/77/7786b5682b0a0861ac934be4bc4b5b517190231ecea3107225ddbf41fbba3ae7.jpg',
      'https://cdn.meme.am/instances/500x/65164757.jpg',
      'http://i.memecaptain.com/gend_images/pkkx0g.jpg',
      'http://www.mememaker.net/static/images/memes/3853136.jpg',
      'https://cdn.meme.am/instances/500x/53054900.jpg',
      'https://cdn.meme.am/instances/25680624.jpg',
      'https://cdn.meme.am/instances/500x/61072889.jpg',
      'https://cdn.meme.am/instances/62436890.jpg',
      'https://camo.githubusercontent.com/6611c59c06fb0d44cea332575ba3795d8fe15117/68747470733a2f2f7261772e6769746875622e636f6d2f61686d65646e75616d616e2f6d656d652d736179732d6a656e6b696e732f6d61737465722f6173736574732f696d672f6275696c642d79656c6c6f772e6a7067',
      'https://raw.githubusercontent.com/ferdingler/alexa-skill-jenkins/master/page/who-broke-the-build.jpg',
      'http://www.imagefully.com/wp-content/uploads/2015/08/Funny-Lol-Cat-Computer-On-Image.jpg',
      'http://i.stack.imgur.com/3Fg7s.jpg'
  ]

  robot.hear /Build.*of.*@.*by.*failed in/, (res) ->
  	res.send res.random failedBuild

  passedBuild = [
      'https://theskinnyonmyjeans.files.wordpress.com/2012/08/lolcat-hooray.jpg',
      'http://i181.photobucket.com/albums/x238/ali_squidz/lolcats/funny-pictures-proud-cat.jpg',
      'http://2.bp.blogspot.com/-SibDP9asPIs/VjPItoBf4FI/AAAAAAAAO4s/5DkOelMkAlI/s1600/really_yay_lolcats.jpeg',
      'http://4.bp.blogspot.com/-9YULmt57Y68/UqOZ6WItyUI/AAAAAAAAHFo/P3c2-NIEwfw/s1600/whew-close-call-lolcat.jpg',
      'https://s-media-cache-ak0.pinimg.com/564x/a3/9b/91/a39b9120d5df1a34cbae8cfb99cfeed6.jpg',
      'http://media-cache-ak0.pinimg.com/736x/e8/d2/0a/e8d20af6ba9e5e4f1d7243b555cc2b16.jpg',
      'http://i464.photobucket.com/albums/rr3/Delaney_Gaara/Lol%20Cats/untitled.jpg',
      'https://rebuildingholly.files.wordpress.com/2012/05/huzzah-lolcat.jpg',
      'http://www.aspectofthehare.net/wp-content/uploads/2010/06/happy_lolcat.jpg'
  ]

  robot.hear /Build.*of.*@.*by.*passed in/, (res) ->
    res.send res.random passedBuild

  sleepyTime = [
      'http://farm3.static.flickr.com/2318/1520698819_6bd291bfdc_m.jpg',
      'http://i.imgur.com/BEZFF.jpg',
      'http://2.bp.blogspot.com/-VGFjz-oiyxg/U0itxAp0BuI/AAAAAAAAIBM/oO2b7l-6u9U/s1600/lolcat-hates-mornings.jpg',
      'https://s-media-cache-ak0.pinimg.com/236x/77/1b/7d/771b7d63890e72ddd494572e6ba6b937.jpg',
      'http://img.photobucket.com/albums/v91/jungle_goddess/Misc/LOLCatsIWillSleepHere.jpg',
      'http://1.bp.blogspot.com/-PNPTjlGrnMM/UScj4SSiNnI/AAAAAAAAErs/lnYrIM7_T1E/s1600/sleep-escape-lolcat.jpg',
      'https://s-media-cache-ak0.pinimg.com/originals/f7/f0/a9/f7f0a923bc87d04b36e76e3c71d7bef5.jpg'
  ]

  robot.hear /\bsleep|\bbed|\btired/i, (res) ->
    res.send res.random sleepyTime
