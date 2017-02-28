class Port < ApplicationRecord
  belongs_to :origin, :class_name => "Job"
  belongs_to :destination, :class_name => "Job", :foreign_key => "destination_id"
end
