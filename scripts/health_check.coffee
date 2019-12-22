# Description:
#   health check
# Commands:
#   from http request.
module.exports = (robot) ->
    robot.router.get '/healthcheck', (req, res) ->
        res.end 'ok'
