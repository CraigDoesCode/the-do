class RemoveImageFromActivities < ActiveRecord::Migration[7.0]
  def change
    remove_column :activities, :image
  end
end
