class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :email
      t.string :firstName
      t.string :lastName
      t.string :password_digest
      t.timestamps
    end
  end
end
