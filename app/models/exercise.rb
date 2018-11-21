class Exercise < ApplicationRecord
  belongs_to :schedule
  validates :name, presence: true,
                    length: { minimum: 5 }
end
