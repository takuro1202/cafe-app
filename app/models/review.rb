class Review < ApplicationRecord
  belongs_to :user, optional: true
  with_options presence: true do
    validates :cafename
    validates :text
  end
end
