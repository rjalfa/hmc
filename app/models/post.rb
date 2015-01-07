class Post < ActiveRecord::Base
  belongs_to :user
<<<<<<< HEAD
  has_many :blocks, dependent: :destroy
=======
  has_many :blocks
>>>>>>> post-blocks
  default_scope -> { order(created_at: :desc) }
  validates :user_id, presence: true
  validates :content, presence: true, length: {maximum: 140}
end
