class Discussion < ActiveRecord::Base
  belongs_to :user
  has_and_belongs_to_many :subscribed_users, :class_name => 'User', :join_table => 'subscribed_discussions'
end
