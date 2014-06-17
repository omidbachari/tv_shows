class ChangeLabelforTelevisionsShowId < ActiveRecord::Migration
  def change
    rename_column :characters, :televisions_show_id, :television_show_id

  end
end
