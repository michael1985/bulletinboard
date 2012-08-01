class UserPhones < ActiveRecord::Migration
  def up
    create_table :user_phones do |t|
      t.integer :user_id, :null => false
      t.string :phone
      t.timestamps
    end
  end

  def down
    drop_table :user_phones
  end
end
