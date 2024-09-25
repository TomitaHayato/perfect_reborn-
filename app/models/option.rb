class Option < ApplicationRecord
  belongs_to :question

  validates :content, uniqueness: { scope: :question_id }
end
