class RenameTypeToCategory < ActiveRecord::Migration[7.0]
  def change
    rename_column :activities, :type, :category
  end
end
