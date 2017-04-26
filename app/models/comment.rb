class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :product

<<<<<<< Updated upstream
  validates :body, presence: true
  validates :user, presence: true
  validates :product, presence: true
  validates :rating, numericality: { only_integer: true }

=======
>>>>>>> Stashed changes
  scope :rating_desc, -> {order(rating: :desc)}
  scope :rating_asc, -> {order(rating: :asc)}
end
