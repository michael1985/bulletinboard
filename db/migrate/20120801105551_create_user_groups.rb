class CreateUserGroups < ActiveRecord::Migration
  def up
    create_table :user_groups do |t|
      t.integer :user_id
      t.integer :group_id

      t.timestamps
    end
  end

  def down
    drop_table :user_groups
  end
end
