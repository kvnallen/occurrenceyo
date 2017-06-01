class Role < ApplicationRecord
    validates :title, uniqueness: { case_sensitive: false }
end
