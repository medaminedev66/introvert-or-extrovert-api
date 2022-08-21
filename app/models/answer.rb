class Answer < ApplicationRecord
  belongs_to :option
  
  validates :text, presence: true
end
