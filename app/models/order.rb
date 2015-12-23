class Order < ActiveRecord::Base
  attr_accessible :order, :order_no
  belongs_to :customer
end
