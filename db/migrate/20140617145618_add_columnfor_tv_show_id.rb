class AddColumnforTvShowId < ActiveRecord::Migration
  def up
    add_column :characters, :television_show_id, :integer, null: false
  end
  def down
    remove_column :television_show_id
  end
end
