class CreateBikes < ActiveRecord::Migration[5.1]
  def change
    create_table :bikes do |t|
      t.string :title
      t.text :description
      t.integer :price_per_day
      t.string :address
      t.string :photo
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
