class Review < ApplicationRecord
  belongs_to :user, optional: true
  has_many :comments
  with_options presence: true do
    validates :cafename
    validates :text
  end
end
