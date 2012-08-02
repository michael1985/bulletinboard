class AddUserFields < ActiveRecord::Migration
  def up
    add_column :users, :total_profile_viewed, :integer, :null => false, :default => 0
    add_column :users, :profile_viewed_today, :integer, :null => false, :default => 0
    add_column :users, :is_active, :boolean, :default => false
  end

  def down
    remove_column :users, :total_profile_viewed
    remove_column :users, :profile_viewed_today
    remove_column :users, :is_active
  end
end
