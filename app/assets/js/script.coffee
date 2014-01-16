
socket = io.connect 'http://localhost:3000'

user = window.prompt 'what is your name ?'

$ ->
  $input = $ '#input'

  ($ '#send').on 'click', ->
    text = $input.text()
    socket.emit 'req',
      user: user
      text: text

  $chats = $ '#chats'
  socket.on 'res', (res) ->
    $chats.prepend ($ '<li>').text "#{res.user}: #{res.text}"


