class Customer < ActiveRecord::Base
  attr_accessible :name, :table_no, :order, :order_no
  validates :table_no, presence: true, uniqueness: true, length: { maximum: 100 }
  has_many :orders
end
