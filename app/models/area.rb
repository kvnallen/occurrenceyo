class Area < ApplicationRecord
  validates :name, uniqueness: { case_sensitive: false }
  belongs_to :user
end
