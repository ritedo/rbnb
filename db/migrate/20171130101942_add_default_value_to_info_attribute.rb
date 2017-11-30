class AddDefaultValueToInfoAttribute < ActiveRecord::Migration[5.1]
  def change
    change_column :bikes, :bell, :boolean, default: false
    change_column :bikes, :lights, :boolean, default: false
    change_column :bikes, :pump, :boolean, default: false
    change_column :bikes, :child_seat, :boolean, default: false
    change_column :bikes, :padlock, :boolean, default: false
    change_column :bikes, :helmet, :boolean, default: false
    change_column :bikes, :basket, :boolean, default: false
  end
end
