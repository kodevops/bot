# Description:
#   health check
# Commands:
#   from http request.
module.exports = (robot) ->
  robot.router.get "/health_check", (req, res) ->
      res.end "ok"
