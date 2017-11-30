class AddInfoToBikes < ActiveRecord::Migration[5.1]
  def change
    add_column :bikes, :category, :string
    add_column :bikes, :size, :string
    add_column :bikes, :bell, :boolean
    add_column :bikes, :lights, :boolean
    add_column :bikes, :pump, :boolean
    add_column :bikes, :child_seat, :boolean
    add_column :bikes, :padlock, :boolean
    add_column :bikes, :helmet, :boolean
    add_column :bikes, :basket, :boolean
  end
end
