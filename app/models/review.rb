class Review < ApplicationRecord
  belongs_to :restaurant

  validates :content, presence: true

  # https://guides.rubyonrails.org/active_record_validations.html#numericality
  # 2.8 numericality
  validates :rating, presence: true, inclusion: { in: (0..5)}, numericality: { only_integer: true }
end
