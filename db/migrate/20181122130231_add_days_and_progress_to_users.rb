class AddDaysAndProgressToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :days, :integer
    add_column :users, :progress, :integer
  end
end
