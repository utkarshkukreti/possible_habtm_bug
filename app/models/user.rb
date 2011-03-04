class User < ActiveRecord::Base
  has_many :discussions
end
