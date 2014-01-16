debug = require('debug')('coah:events:content')
exports.Content = (app) ->

  {Chat} = app.get 'models'

  index: (req, res) ->
    debug 'index'
    return res.render 'index', title: 'Express City'

  user: (req, res, next) ->
    return res.render 'user'

  json: (req, res, next) ->
    Chat.find user: req.query.username, (err, chats) ->
      res.json 200, chats

