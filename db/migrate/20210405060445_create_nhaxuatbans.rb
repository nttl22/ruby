class CreateNhaxuatbans < ActiveRecord::Migration[6.1]
  def change
    create_table :nhaxuatbans do |t|
      t.string :tennxb
      t.string :diachi
      t.string :email 
      t.string :thongtinnguoidaidien
      t.timestamps
    end
  end
end
