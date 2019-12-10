class Promess < ApplicationRecord
    belongs_to :candidat
    has_many :engagments
end
