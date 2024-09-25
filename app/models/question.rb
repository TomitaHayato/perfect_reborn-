class Question < ApplicationRecord
  has_many :options

  validates :title, uniqueness: true
end
