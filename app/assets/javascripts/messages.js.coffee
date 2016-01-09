$ ->
  success = (data)->
    console.log 'success'
    console.log data
 
  failure = (data)->
    console.log 'failure'
    console.log data

  $('button#send_message').on 'click', ->
    data = {
      conversation_id: 1,
      content: $('#message-to-send').val()
    }

    $dispatcher.trigger 'messages.send', data, success, failure