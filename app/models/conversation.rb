class Conversation < ActiveRecord::Base
  AVATARS =
    %w(
      chat_avatar_01.jpg
      chat_avatar_02.jpg
      chat_avatar_03.jpg
      chat_avatar_04.jpg
      chat_avatar_05.jpg
      chat_avatar_06.jpg
      chat_avatar_07.jpg
      chat_avatar_08.jpg
      chat_avatar_09.jpg
      chat_avatar_10.jpg
      chat_avatar_01_green.jpg
    )
  
  def self.random_avatar
    "https://s3-us-west-2.amazonaws.com/s.cdpn.io/195612/#{AVATARS.sample}"
  end
end