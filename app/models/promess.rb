class Promess < ApplicationRecord
    belongs_to :candidat
    has_many :engagments
    has_many :suivis

    has_many_attached :pictures
end
