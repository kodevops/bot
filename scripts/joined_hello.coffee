# Description:
#   joined hello channel
#
# Commands:
#   joined #hello_자기소개

message = '''어서오세요. 반갑습니다!

아래의 양식에 맞춰서
```
예)
1. 거주지
2. 겐바(+옵션: 회사명)
3. 하시는 일(+옵션: 가벼운 농담)
4. 들어오시게 된 계기(소개, 페이스북, 구글 검색 등등..)
5. 하고 싶은 말
```

*자기소개* 및 *프로필 변경* 해주시면 감사드려요 :slightly_smiling_face:
아래 링크는 저희 커뮤니티의 `가이드라인` 입니다.

참고해 주세요 ~~!
https://github.com/kodevops/guideline/blob/master/README.md

서로 정보교환, 상담, 교류를 통해서, 같이 성장했으면 좋겠습니다.
잘 부탁 드리겠습니다.:man-bowing:

--------------------------------------------------------

채널 리스트
```
- 디아블로 #diablo
- 낚시 #fishing
- 캠핑 #outdoor
- 노동요 #bgm_노동요
- 부업 #부업
- 지름신 #지름신
```



--------------------------------------------------------

기타 문의 사항 및 건의 사항이 있으시면 아래의 스태프에게 연락을 주세요.
```
- sangjun
- daebum-lee
- manggu
- Yoda / Hyungcheol Kim
- 김범녕
- KIM HYEMI
- Seongjoo KIM
- Chung
```
'''

module.exports = (robot) ->
    Slack = require 'slack-node'
    slack = new Slack process.env.HUBOT_SLACK_TOKEN

    robot.enter (msg) ->
        user_name = msg.message.user.name
        channel_id = msg.message.room

        # C18KD2QLT: hello_자기소개 / C50HHUNKX: bot_테스트
        if channel_id == 'C18KD2QLT' or channel_id == 'C50HHUNKX'
            message = '@' + user_name + '\n' +  message
            msg.send message
