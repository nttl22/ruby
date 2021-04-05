class AddDanhmucsachesRefNhaxuatban < ActiveRecord::Migration[6.1]
  def change
    add_reference :danhmucsaches, :danhmuctacgia, foreign_key: true
    add_reference :danhmucsaches, :nhaxuatbans, foreign_key: true
    add_reference :danhmucsaches, :theloaisaches, foreign_key: true
  end
end
