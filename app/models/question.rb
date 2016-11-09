class Question < ApplicationRecord
  has_many :users
  has_many :answers
end
