class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :username
      t.string :fname
      t.string :home
      t.string :email
      t.integer :age
      t.string :password

      t.timestamps
    end
  end
end