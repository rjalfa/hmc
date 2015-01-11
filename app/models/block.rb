class Block < ActiveRecord::Base
  belongs_to :post
  has_many :comments#, dependent: :destroy
end
