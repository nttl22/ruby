class Danhmucsach < ApplicationRecord
    belongs_to :theloai, class_name: 'Theloaisach', foreign_key: 'theloaisaches_id'
    belongs_to :nhaxuatban, class_name: 'Nhaxuatban', foreign_key: 'nhaxuatbans_id'
    belongs_to :danhmuctacgia, class_name: 'Danhmuctacgium', foreign_key: 'danhmuctacgia_id'
end
