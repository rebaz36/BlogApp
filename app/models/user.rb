class User < ApplicationRecord
  has_many :posts, foreign_key: :author_id
  has_many :likes, foreign_key: :author_id
  has_many :comments, foreign_key: :author_id

  validates :name, presence: true, length: { minimum: 3, maximum: 20 }
  validates :bio, presence: true, length: { minimum: 3, maximum: 150 }
  validates :posts_counter, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

  def check_last_three_posts
    posts.limit(3).order(created_at: :desc)
  end
end
