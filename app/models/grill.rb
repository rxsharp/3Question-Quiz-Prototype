class Grill < ActiveRecord::Base
  belongs_to :question, inverse_of: :grills
  validates :question,
           presence: true
end
