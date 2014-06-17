class AddStoTelevisions < ActiveRecord::Migration
  def change
    remove_column :characters, :television_show_id
    add_column :characters, :televisions_show_id, :integer
  end
end
