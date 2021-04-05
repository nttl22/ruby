class CreateDanhmucsaches < ActiveRecord::Migration[6.1]
  def change
    create_table :danhmucsaches do |t|
      t.string :tensach
      t.integer :namxuatban
      t.timestamps
    end
  end
end
