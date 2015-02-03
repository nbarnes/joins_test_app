class User < ActiveRecord::Base

  default_scope { where.not(active: false) }

  has_many :to_messages
  has_many :from_messages

end
