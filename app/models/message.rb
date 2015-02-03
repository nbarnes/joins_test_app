class Message < ActiveRecord::Base

  default_scope { joins(:from_user).where('from_user.active', false) }

  belongs_to :from_user, :class_name => 'User', :foreign_key => 'from_user_id'
  belongs_to :to_user, :class_name => 'User', :foreign_key => 'to_user_id'

end
