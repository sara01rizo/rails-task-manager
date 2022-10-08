class AddDefaultValueToShowAttribute < ActiveRecord::Migration[7.0]
  def change
    change_column :tasks, :completed, :boolean, default: true
  end
end
