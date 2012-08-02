class CreateBulletins < ActiveRecord::Migration
  def change
    create_table :bulletins do |t|
      t.integer :user_id
      t.string :title
      t.text :body
      t.integer :times_read
      t.integer :read_today

      t.timestamps
    end
  end
end
