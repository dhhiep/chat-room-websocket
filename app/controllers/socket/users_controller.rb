class Socket::UsersController < WebsocketRails::BaseController
  def initialize_session
    controller_store[:users_count] = 0
  end
  
  def connect
    controller_store[:users_count] += 1
    trigger_success controller_store[:users_count]
  end

  def disconnect
    controller_store[:users_count] -= 1
    trigger_success controller_store[:users_count]
  end
end