class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.string :cafename, null: false
      t.string :address, null: false
      t.string :image, null: false
      t.text :text, null: false
      t.integer :evaluation1, null: false
      t.integer :evaluation2, null: false
      t.integer :evaluation3, null: false
      t.integer :evaluation4, null: false
      t.integer :evaluation5, null: false
      t.string :existence1, null: false
      t.string :existence2, null: false
      t.string :existence3, null: false
      t.timestamps null: false
 
    end
  end
end
