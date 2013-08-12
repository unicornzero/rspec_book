class User < ActiveRecord::Base
  has_many :received_messages, :class_name => Message.name, :foreign_key => "recipient_id"

  attr_accessible :login

  def send_message(message_attrs)
    Message.create! message_attrs
  end

end
