class CreateRawTweets < ActiveRecord::Migration[5.2]
  def change
    create_table :raw_tweets do |t|
      t.integer :tweet_id, limit: 8, null: false

      t.timestamps
    end
  end
end
