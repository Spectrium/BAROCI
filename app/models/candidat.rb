class Candidat < ApplicationRecord
    has_many :promesses
    belongs_to :region
    belongs_to :commune
end
