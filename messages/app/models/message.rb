class Message < ActiveRecord::Base
  belongs_to :recipient, :class_name => "User"

  attr_accessible :recipient_id, :text, :title, :recipient

  validates_presence_of :title, :text, :recipient

end
