class Question < ApplicationRecord
  has_one :option

  validates :text, presence: true
end
