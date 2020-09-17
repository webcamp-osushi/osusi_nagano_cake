class ChangeDataIsActiveToProduct < ActiveRecord::Migration[5.2]
  def change
  	change_column :products, :is_active, :boolean, default: false, null: false
  end
end
