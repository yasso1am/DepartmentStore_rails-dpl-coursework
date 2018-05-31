class Item < ApplicationRecord
  belongs_to :department
  has_many :comments, dependent: :destroy
end
