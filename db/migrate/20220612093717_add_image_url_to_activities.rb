class AddImageUrlToActivities < ActiveRecord::Migration[7.0]
  def change
    add_column :activities, :image_url, :string
  end
end
