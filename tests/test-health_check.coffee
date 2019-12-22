Helper = require('hubot-test-helper')
helper = new Helper('../scripts')
{assert} = require('chai')
request = require('request')

process.env.EXPRESS_PORT = 8080

describe 'joind hello', ->
  beforeEach ->
    @robot = helper.createRoom()

  afterEach ->
    @robot.destroy()

  context 'GET /healthcheck', ->
    beforeEach (done) ->
      request 'http://localhost:8080/healthcheck', (@error, @response, @body) => done()

    it 'responds with status 200', ->
      assert.equal @response.statusCode, 200
      assert.equal @body, 'ok'
