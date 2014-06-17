class AddTableforCharacters < ActiveRecord::Migration
  def up
    create_table :characters do |t|
      t.string :character_name, null: false
      t.string :actor_name, null: false
      t.string :description
    end
  end

  def down
    drop_table :characters
  end
end
