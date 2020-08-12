class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.string :content
      t.integer :rating
      t.integer :restaurant_id

      t.timestamps
       t.index ["restaurant_id"], name: "index_reviews_on_restaurant_id"
    end
  end
end
