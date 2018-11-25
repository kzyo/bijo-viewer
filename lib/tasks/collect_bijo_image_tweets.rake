namespace :bijo_image_tweets do
  require 'twitter'
  MAX_TWEET = 100

  desc "collect tweets with bijo image"
  task collect: :environment do
    puts "*** started *** task bijo_image_tweets collect at #{Time.now}"

    client = Twitter::REST::Client.new do |config|
      config.consumer_key = Rails.application.credentials.twitter[:consumer_key]
      config.consumer_secret = Rails.application.credentials.twitter[:consumer_secret]
    end

    since_id = RawTweet.last.present? ? RawTweet.last.tweet_id : -1;
    option = {lang: 'ja', result_type: 'recent', since_id: since_id}

    tweets = client.search("#可愛かったらRT filter:images", option).take(MAX_TWEET)

    tweets.each do |tweet|
      dumped = Marshal.dump(tweet)
      RawTweet.create(
        tweet_id: tweet.id,
        raw_tweet_dumped: {
          io: StringIO.new(dumped),
          filename: tweet.id
        }
      )
    end

    puts "collected #{tweets.size} tweets"
    puts "*** ended *** task bijo_image_tweets collect at #{Time.now}"
  end
end
