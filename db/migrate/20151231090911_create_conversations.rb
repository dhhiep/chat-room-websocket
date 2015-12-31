class CreateConversations < ActiveRecord::Migration
  def change
    create_table :conversations do |t|
      t.integer :owner
      t.integer :user
      t.integer :messages_count

      t.timestamps null: false
    end
  end
end
