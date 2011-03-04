class User < ActiveRecord::Base
  has_many :discussions
  has_and_belongs_to_many :subscribed_discussions, :class_name => 'Discussion', :join_table => 'subscribed_discussions'
end
