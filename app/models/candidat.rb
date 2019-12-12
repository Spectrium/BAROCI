class Candidat < ApplicationRecord
    has_many :promesses
    belongs_to :region
    belongs_to :commune

    has_many_attached :avatars
end
