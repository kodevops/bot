# Description:
#   qna
#
# Commands:
#   kdbot 질문 - Reply with <Welcome to Underground!>

module.exports = (robot) ->

  robot.hear /질문1$/i, (msg) ->
    username = msg.message.user.name
    msg.send "질문1, " + username

  robot.respond /질문2$/i, (msg) ->
    username = msg.message.user.name
    msg.send "질문2, " + username
