# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Job.delete_all
Job.create([
    { user_id:1, boat_id:1, origin_id:1, destination_id:2, name:"Trip A", description:"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse enim nisi, pellentesque non efficitur nec, pellentesque vitae tellus. ", cost:2000, customer:1 },

    { user_id:2, boat_id:2, origin_id:2, destination_id:3, name:"Trip B", description:"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse enim nisi, pellentesque non efficitur nec, pellentesque vitae tellus. ", cost:4000, customer:2 },

    { user_id:3, boat_id:2, origin_id:3, destination_id:4, name:"Trip C", description:"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse enim nisi, pellentesque non efficitur nec, pellentesque vitae tellus. ", cost:5000, customer:3 },

    { user_id:4, boat_id:3, origin_id:4, destination_id:5, name:"Trip D", description:"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse enim nisi, pellentesque non efficitur nec, pellentesque vitae tellus. ", cost:6000, customer:4 },

    { user_id:5, boat_id:4, origin_id:5, destination_id:1, name:"Trip E", description:"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse enim nisi, pellentesque non efficitur nec, pellentesque vitae tellus. ", cost:7000, customer:5 }
])

Boat.delete_all
Boat.create([
    { origin_id:1, destination_id:2, name:"Big Rusty", capacity:10, location:"London" },
    { origin_id:2, destination_id:3, name:"Titanic", capacity:20, location:"Accra" },
    { origin_id:3, destination_id:4, name:"Mayflower", capacity:30, location:"Lisbon" },
    { origin_id:4, destination_id:5, name:"Slow Motion", capacity:40, location:"Bahamas" }
])

#Port.delete_all
#Port.create([
#    { name:"New York", latitude:11.22, longitude:12.12 },
#    { name:"London", latitude:22.33, longitude:23.23 },
#    { name:"Accra", latitude:33.44, longitude:34.34 },
#    { name:"Lisbon", latitude:44.55, longitude:45.45 },
#    { name:"Bahamas", latitude:55.66, longitude:56.56 }
#
#])

#JobBoat.delete_all
#JobBoat.create([
#    { job_id:1, boat_id:1 },
#    { job_id:2, boat_id:1 },
#    { job_id:3, boat_id:1 },
#    { job_id:4, boat_id:2 }
#])
