class CreateDanhmuctacgia < ActiveRecord::Migration[6.1]
  def change
    create_table :danhmuctacgia do |t|
      t.string :tentacgia
      t.string :website
      t.string :ghichu
      t.timestamps
    end
  end
end
