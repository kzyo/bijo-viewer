class RawTweet < ApplicationRecord
  has_one_attached :raw_tweet_dumped # Twitter object of raw tweet which dumped by Marshal.dump
end
