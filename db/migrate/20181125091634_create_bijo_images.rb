class CreateBijoImages < ActiveRecord::Migration[5.2]
  def change
    create_table :bijo_images do |t|
      t.integer :tweet_id, limit: 8, null: false
      t.integer :width, null: false
      t.integer :height, null: false
      t.string :url, null: false

      t.timestamps
    end
  end
end
