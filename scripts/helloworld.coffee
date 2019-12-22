# Description:
#   Hello World test
#
# Commands:
#   hubot Hello World - Reply with <Welcome to Underground!>

module.exports = (robot) ->
    robot.respond /hello$/i, (msg) ->
        username = msg.message.user.name
        msg.send 'Hello, ' + username
