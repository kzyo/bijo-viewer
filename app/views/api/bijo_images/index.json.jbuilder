json.set! :bijo_images do
  json.array! @bijo_images do |bijo_image|
    json.extract! bijo_image, :tweet_id, :width, :height, :url
  end
end
