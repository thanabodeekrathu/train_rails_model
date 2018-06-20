class Product < ApplicationRecord
  #validate :name, presence: true  #false กรณีไม่ได้ใส่ name มาไรงี้
  #validate :name, uniqness: true

  has_many :product_names #เชื่อมกับอีกไฟล์นึงที่เป็น DB เก็บชื่ออื่นๆ ของ product ไว้
  #has_and_belongs_to_many ไปหาเพิ่มเติม ทั้งการ migration และ model 
  #many-to-many ตอน migration มันจะมีตารางลับเพิ่มมา ไม่ต้องตกใจ

  def self.search(query) 
    return Product.where("name LIKE ?", "%#{query}%")
    # or self.where("name LIKE ?" "%" + query + "%")
    # or where("name LIKE ?" "%" + query + "%")
    # จะใส่ หรือไม่ต้องใส่ return ก็ได้ถ้ามันเป็นตัวสุดท้ายของ method อยู่แล้ว
  end

  def ten_percent_discount
    return price * 0.9
  end

  def lang(language)
    product_names.find_by(lang: language)
  end
end
