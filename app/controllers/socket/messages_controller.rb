class Socket::MessagesController < WebsocketRails::BaseController
  def send_message
    WebsocketRails[:public_room].trigger(:list_users, {ac: 'ac'})
    trigger_success message
  end
end