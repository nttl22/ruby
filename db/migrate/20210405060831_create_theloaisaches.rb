class CreateTheloaisaches < ActiveRecord::Migration[6.1]
  def change
    create_table :theloaisaches do |t|
      t.string :tentheloai
      t.timestamps
    end
  end
end
