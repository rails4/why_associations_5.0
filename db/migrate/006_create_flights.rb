# ?
# class CreateFlights < ActiveRecord::Migration[5.0]
#   def change
#     create_table :flights do |t|
#       t.string :origin
#       t.string :dest
#       t.integer :distance
#       t.integer :dep_delay
#       t.integer :arr_delay
#       t.datetime :dep_time
#       t.datetime :sched_dep_time
#       t.datetime :arr_time
#       t.datetime :sched_arr_time
#       t.integer :air_time
#       t.string :tailnum
#
#       t.index ['origin'], name: 'index_flights_on_origin'
#       t.index ['dest'], name: 'index_flights_on_dest'
#     end
#   end
# end
