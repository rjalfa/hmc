class Post < ActiveRecord::Base
  belongs_to :user
  has_many :blocks, dependent: :destroy
  default_scope -> { order(created_at: :desc) }
  validates :user_id, presence: true
  validates :content, presence: true, length: {maximum: 140}
  accepts_nested_attributes_for :blocks, reject_if: lambda { |a| a[:content].blank? }
end
