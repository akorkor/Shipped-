class Job < ApplicationRecord
  has_many :boats, through: :job_boats
  has_many :job_boats
  has_many :ports
  belongs_to :user
end
