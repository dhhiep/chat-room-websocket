class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :token
      t.boolean :status
      t.datetime :lastest_sign_in

      t.timestamps null: false
    end
  end
end
