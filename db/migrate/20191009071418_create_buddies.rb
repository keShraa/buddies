class CreateBuddies < ActiveRecord::Migration[5.2]
  def change
    create_table :buddies do |t|
      t.string :email
      t.string :password
      t.string :name
      t.string :url
      t.integer :age
      t.integer :batch

      t.timestamps
    end
  end
end
