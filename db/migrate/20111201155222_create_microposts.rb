class CreateMicroposts < ActiveRecord::Migration
  def self.up
  def change
    create_table :microposts do |t|
      t.string :content
      t.integer :user_id

      t.timestamps
    end
    add_index :microposts, :user_id

  end
  
  def self.down
    dorp_table :microposts
  end
end
