class CreateTweets < ActiveRecord::Migration
  def change
    create_table :tweets do |t|
      t.text :body
      t.integer :bird

      t.timestamps
    end
  end
end
