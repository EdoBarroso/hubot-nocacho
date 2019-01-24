# Description:
#   Hubot script to display "I have no idea what I'm doing" images
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   you have no idea what you're doing
#
# Notes
#   None
#
# Author:
#   Eduardo Barroso <ebarroso@gmail.com> (https://github.com/edobarroso)

module.exports = (robot) ->
  robot.hear regex, (msg) ->
    msg.send msg.random images

images = require './data/images.json'

gaffes = [
  'no tengo (|ni puta )idea',
  '(ni|pico) idea',
  '\\bnpi\\b',
  '\\b(wh|)oops(|ie)\\b',
  'la cagu(e|é)',
  'd(\')oh',
  'no cacho\$',
  'no s(e|é)\$'
]

regex = new RegExp gaffes.join('|'), 'ig'
