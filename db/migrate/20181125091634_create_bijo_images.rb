class CreateBijoImages < ActiveRecord::Migration[5.2]
  def change
    create_table :bijo_images do |t|
      t.integer :tweet_id
      t.integer :width
      t.integer :height
      t.string :url

      t.timestamps
    end
  end
end
