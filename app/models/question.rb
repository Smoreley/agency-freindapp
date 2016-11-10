class Question < ApplicationRecord
  has_many :users
  has_one :answer
end
