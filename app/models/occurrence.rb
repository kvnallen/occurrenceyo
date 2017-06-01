class Occurrence < ApplicationRecord
  after_initialize :init
  validates :title, :description, presence: true
  
  belongs_to :user

  def init
    self.solved = false
  end
end
