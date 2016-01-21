class Customer < ActiveRecord::Base
  attr_accessible :name, :table_no, :order, :order_no, :attachments_attributes
  validates :name, presence: true, uniqueness: true, length: { maximum: 100 }
  has_and_belongs_to_many :orders
  has_many :attachments, as: :attachable, dependent: :destroy
  accepts_nested_attributes_for :attachments
end
