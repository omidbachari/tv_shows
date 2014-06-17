class RemoveNotNullFromCharacterTelevisionId < ActiveRecord::Migration
  def change
    add_index :characters, [:character_name, :actor_name], unique: true
    remove_column :characters, :television_show_id
    add_column :characters, :television_show_id, :integer
  end
end
