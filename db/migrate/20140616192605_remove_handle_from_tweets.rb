class RemoveHandleFromTweets < ActiveRecord::Migration
  def change
    remove_column :tweets, :handle
  end
end
