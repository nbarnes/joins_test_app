class Message < ActiveRecord::Base

  default_scope { from_user_active.to_user_active }

  scope :from_user_active, -> { joins(:from_user).where(users: {active: true}) }
  scope :to_user_active, -> { joins(:to_user).where(users: {active: true}) }

  belongs_to :from_user, :class_name => 'User', :foreign_key => 'from_user_id'
  belongs_to :to_user, :class_name => 'User', :foreign_key => 'to_user_id'

end
