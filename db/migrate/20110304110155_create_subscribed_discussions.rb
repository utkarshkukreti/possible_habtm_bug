class CreateSubscribedDiscussions < ActiveRecord::Migration
  def self.up
    create_table :subscribed_discussions, :id => false do |t|
      t.references :user, :discussion
    end
  end

  def self.down
  end
end
