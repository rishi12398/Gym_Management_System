class SetDefault < ActiveRecord::Migration[5.2]
  def change
    change_column :users, :days, :integer, default: 20
    change_column :users, :progress, :integer, default: 20
  end
end
