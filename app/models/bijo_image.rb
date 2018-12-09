class BijoImage < ApplicationRecord

  def scale_to_width(width)
      img = self
      scale = width.to_f / img['width']
      img['width'] = width # same as *= scale
      img['height'] *= scale
  end
end
