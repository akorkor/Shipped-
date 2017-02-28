class Boat < ApplicationRecord
  has_many :jobs, through: :job_boats
  has_many :job_boats
end
