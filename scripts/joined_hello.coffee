# Description:
#   joined hello channel
#
# Commands:
#   joined #hello_자기소개

message = '어서오세요. 반갑습니다
아래의 양식에 맞춰서

1. 거주지
2. 겐바(옵션:회사명)
3. 하시는일(옵션:가벼운 농담)
4. 들어오시게 된 계기(소개, 페이스북, 구글 검색등등..)
5. 하고 싶은말

자기 소개 및 프로필 변경 해주시면 감사드려요 :slightly_smiling_face:
아래 링크는 간단한 가이드 라인 입니다.

참고 해주세요 ~~!
https://github.com/kodevops/guideline/blob/master/README.md
'

module.exports = (robot) ->
    Slack = require 'slack-node'
    slack = new Slack process.env.HUBOT_SLACK_TOKEN

    robot.enter (msg) ->
        user_name = msg.message.user.name
        # hello = robot.adapter.client.rtm.dataStore.getChannelByName '#hello'
        # channel_id = msg.message.room
        # message_id = msg.message.id
        if msg.message.room == 'C18KD2QLT' or msg.message.room == 'C50HHUNKX'
            message = '@' + user_name + '\n' +  message
            msg.send message
