class Question < ActiveRecord::Base

has_many :grills, dependent: :destroy, inverse_of: :question

accepts_nested_attributes_for :grills
#add to tutorial
end
