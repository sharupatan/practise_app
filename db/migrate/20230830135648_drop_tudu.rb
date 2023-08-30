class DropTudu < ActiveRecord::Migration[7.0]
  def change
    drop_table :tudus
  end
end
