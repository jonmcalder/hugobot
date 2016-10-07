# Description:
# Just some (hopefully) amusing listen/respond examples to give Hugo a bit of personality.
#
# Notes:
# The idea here is to start simple and grow.morph these over time if/when they get stale or irritating. 
# Hopefully over time I can learn a little more and introduce some more interesting functionality
#

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
      'https://raw.githubusercontent.com/ferdingler/alexa-skill-jenkins/master/page/who-broke-the-build.jpg'
  ]

  robot.hear /Build.*of.*@.*by.*failed in/, (res) ->
  	res.send res.random failedBuild

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