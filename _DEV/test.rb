class Port < ApplicationRecord
   has_many :origins, :class_name => 'Job', :foreign_key => 'origin_id'
   has_many :destinations, :class_name => 'Job', :foreign_key => 'destination_id'
end
class Job < ApplicationRecord
   belongs_to :origin, :class_name => 'Port'
   belongs_to :destination, :class_name => 'Port'
end

migrations
class CreatePorts < ActiveRecord::Migration[5.0]
 def change
   create_table :ports do |t|
     t.string :name
     t.float :latitude
     t.float :longitude
     t.timestamps
   end
 end
end

class CreateJobs < ActiveRecord::Migration[5.0]
 def change
   create_table :deals do |t|
     t.string :item
     t.references :origin, foreign_key: true
     t.references :destination, foreign_key: true
     t.timestamps
   end
 end
end

class User < ApplicationRecord
   has_many :purchases, :class_name => 'Deal', :foreign_key => 'buyer_id'
   has_many :sales, :class_name => 'Deal', :foreign_key => 'seller_id'
end
class Deal < ApplicationRecord
   belongs_to :buyer, :class_name => 'User'
   belongs_to :seller, :class_name => 'User'
end
migrations
class CreateUsers < ActiveRecord::Migration[5.0]
 def change
   create_table :users do |t|
     t.string :name
     t.timestamps
   end
 end
end
class CreateDeals < ActiveRecord::Migration[5.0]
 def change
   create_table :deals do |t|
     t.string :item
     t.references :buyer, foreign_key: true
     t.references :seller, foreign_key: true
     t.timestamps
   end
 end
end
