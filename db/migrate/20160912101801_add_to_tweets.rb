class AddToTweets < ActiveRecord::Migration[5.0]
  def change
    add_column :tweets, :title, :string
    add_column :tweets, :text, :text
  end
end
