class CreateBikes < ActiveRecord::Migration[7.0]
  def change
    create_table :bikes do |t|
      t.string :brand
      t.string :style
      t.integer :price
      t.string :image_url

      t.timestamps
    end
  end
end
