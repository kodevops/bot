# Description:
#   create thread in qna
#
# Commands:
#   질문! ~~~~~

module.exports = (robot) ->
  Slack = require 'slack-node'
  slack = new Slack process.env.HUBOT_SLACK_TOKEN

  robot.hear /질문!/i, (msg) ->
    user_name = msg.message.user.name
    channel_id = msg.message.room
    message_id = msg.message.id

    createThread channel_id, message_id, user_name, (err, user_name) ->
      if err
        return err
      msg.send "created thead, " + user_name

  createThread = (channel_id, message_id, user_name, cb) ->
    params = {
      channel: channel_id,
      text: '질문이 등록 되었습니다.',
      thread_ts: message_id,
    }
    slack.api "chat.postMessage", params, (err, res) ->
      if err
        return err

      return cb null, user_name

  getChannelName = (channel_id, cb) ->
    slack.api "channels.list", {exclude_archived: 1}, (err, res) ->
      if err
        return err

      for val, i in res.channels
        if val.id == channel_id
          return cb null, val.name

      return cb err
