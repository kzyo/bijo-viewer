class Api::BijoImagesController < ApplicationController
  MYSQL_BIGINT_MAX_VALUE = 9223372036854775807
  BIJO_IMAGE_WIDTH = 200

  def index
    max_id = bijo_image_params[:max_id] || MYSQL_BIGINT_MAX_VALUE
    @bijo_images = BijoImage.where("tweet_id < #{max_id}").order('id desc').limit(10)
    @bijo_images.map{|image| image.scale_to_width(BIJO_IMAGE_WIDTH)}
  end

  private
    def bijo_image_params
      params.fetch(:bijo_images, {}).permit(:max_id)
    end
end
