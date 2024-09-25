class Animal < ApplicationRecord
  validates :name, uniqueness: true
end
