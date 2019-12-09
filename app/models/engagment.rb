class Engagment < ApplicationRecord
    belongs_to :promess
    has_many :surveys
    has_many :comments
end
