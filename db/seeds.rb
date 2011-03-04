# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

dilbert = User.create :name => "Dilbert"
dogbert = User.create :name => "Dogbert"

# dilbert creates a discussion
discussion = Discussion.create :user => dilbert, :title => "Hello from Dilbert"
# dogbert subscribed to this
discussion.subscribed_users << dogbert
discussion.save

puts "Original Discussion"
p discussion

puts "Discussion's subscribed users"
p discussion.subscribed_users

puts "Dogbert's subscribed discussions"
p dogbert.subscribed_discussions