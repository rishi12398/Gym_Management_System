class Schedule < ApplicationRecord
  has_many :exercises, dependent: :destroy
  validates :title, presence: true,
                    length: { minimum: 5 }
end
