class Order < ActiveRecord::Base
  attr_accessible :order, :order_no
  has_and_belongs_to_many :customers
end
