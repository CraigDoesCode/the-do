class RenameEndtimeInPlan < ActiveRecord::Migration[7.0]
  def change
    rename_column :plans, :endtime, :end_time
  end
end
