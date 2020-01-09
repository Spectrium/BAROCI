class Survey < ApplicationRecord
  belongs_to :engagment
  belongs_to :user
end
