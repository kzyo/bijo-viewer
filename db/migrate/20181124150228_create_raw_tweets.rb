class CreateRawTweets < ActiveRecord::Migration[5.2]
  def change
    create_table :raw_tweets do |t|
      t.integer :tweet_id

      t.timestamps
    end
  end
end
