require 'faker'
require 'date'
puts "Cleaning database..."

Reservation.destroy_all
TimeSlot.destroy_all
Restaurant.destroy_all
User.destroy_all

puts "Creating users..."

user1 = User.create!(email: 'dmitry@lemuseum.com', password: '123456')

puts "Finished creatings users!"

restaurant = Restaurant.create!(name: 'Restaurant Le Museum', address: '20 Rupert Street', max_capacity: 90, opening_time_start: Time.zone.parse("06:00 PM"), opening_time_end: Time.zone.parse("00:00 AM"), user: user1)

puts "Restaurant #{Restaurant.name} is created!"

Time.zone = 'London'

timeslot1 = TimeSlot.create(start_time: Time.zone.parse("01/06/2023 18:00"), end_time: Time.zone.parse("01/06/2023 20:00"), slot_capacity: 12, restaurant: restaurant)
timeslot2 = TimeSlot.create(start_time: Time.zone.parse("02/06/2023 18:30"), end_time: Time.zone.parse("02/06/2023 20:30"), slot_capacity: 12, restaurant: restaurant)
timeslot3 = TimeSlot.create(start_time: Time.zone.parse("03/06/2023 18:00"), end_time: Time.zone.parse("03/06/2023 20:00"), slot_capacity: 12, restaurant: restaurant)
timeslot4 = TimeSlot.create(start_time: Time.zone.parse("04/06/2023 19:30"), end_time: Time.zone.parse("04/06/2023 21:30"), slot_capacity: 12, restaurant: restaurant)
timeslot5 = TimeSlot.create(start_time: Time.zone.parse("05/06/2023 20:00"), end_time: Time.zone.parse("05/06/2023 22:00"), slot_capacity: 12, restaurant: restaurant)
timeslot6 = TimeSlot.create(start_time: Time.zone.parse("06/06/2023 20:30"), end_time: Time.zone.parse("06/06/2023 22:30"), slot_capacity: 12, restaurant: restaurant)
timeslot7 = TimeSlot.create(start_time: Time.zone.parse("07/06/2023 18:00"), end_time: Time.zone.parse("07/06/2023 20:00"), slot_capacity: 12, restaurant: restaurant)
timeslot8 = TimeSlot.create(start_time: Time.zone.parse("08/06/2023 18:30"), end_time: Time.zone.parse("08/06/2023 20:30"), slot_capacity: 12, restaurant: restaurant)

timeslot9 = TimeSlot.create(start_time: Time.zone.parse("09/06/2023 18:00"), end_time: Time.zone.parse("09/06/2023 20:00"), slot_capacity: 12, restaurant: restaurant)
timeslot10 = TimeSlot.create(start_time: Time.zone.parse("09/06/2023 18:30"), end_time: Time.zone.parse("09/06/2023 20:00"), slot_capacity: 12, restaurant: restaurant)
timeslot11 = TimeSlot.create(start_time: Time.zone.parse("10/06/2023 18:30"), end_time: Time.zone.parse("10/06/2023 20:30"), slot_capacity: 12, restaurant: restaurant)
timeslot12 = TimeSlot.create(start_time: Time.zone.parse("10/06/2023 19:00"), end_time: Time.zone.parse("10/06/2023 21:00"), slot_capacity: 12, restaurant: restaurant)
timeslot13 = TimeSlot.create(start_time: Time.zone.parse("11/06/2023 19:30"), end_time: Time.zone.parse("11/06/2023 21:30"), slot_capacity: 12, restaurant: restaurant)
timeslot14 = TimeSlot.create(start_time: Time.zone.parse("11/06/2023 20:00"), end_time: Time.zone.parse("11/06/2023 22:00"), slot_capacity: 12, restaurant: restaurant)

timeslot15 = TimeSlot.create(start_time: Time.zone.parse("12/06/2023 20:30"), end_time: Time.zone.parse("12/06/2023 22:30"), slot_capacity: 12, restaurant: restaurant)
timeslot16 = TimeSlot.create(start_time: Time.zone.parse("12/06/2023 21:00"), end_time: Time.zone.parse("12/06/2023 23:00"), slot_capacity: 12, restaurant: restaurant)
timeslot17 = TimeSlot.create(start_time: Time.zone.parse("12/06/2023 21:30"), end_time: Time.zone.parse("12/06/2023 23:30"), slot_capacity: 12, restaurant: restaurant)

timeslot18 = TimeSlot.create(start_time: Time.zone.parse("13/06/2023 22:00"), end_time: Time.zone.parse("13/06/2023 00:00"), slot_capacity: 12, restaurant: restaurant)
timeslot19 = TimeSlot.create(start_time: Time.zone.parse("13/06/2023 18:00"), end_time: Time.zone.parse("13/06/2023 20:00"), slot_capacity: 12, restaurant: restaurant)
timeslot20 = TimeSlot.create(start_time: Time.zone.parse("13/06/2023 18:30"), end_time: Time.zone.parse("13/06/2023 20:30"), slot_capacity: 12, restaurant: restaurant)

timeslot21 = TimeSlot.create(start_time: Time.zone.parse("14/06/2023 18:00"), end_time: Time.zone.parse("14/06/2023 20:00"), slot_capacity: 12, restaurant: restaurant)
timeslot22 = TimeSlot.create(start_time: Time.zone.parse("14/06/2023 18:30"), end_time: Time.zone.parse("14/06/2023 20:30"), slot_capacity: 12, restaurant: restaurant)
timeslot23 = TimeSlot.create(start_time: Time.zone.parse("14/06/2023 19:00"), end_time: Time.zone.parse("14/06/2023 21:00"), slot_capacity: 12, restaurant: restaurant)

timeslot24 = TimeSlot.create(start_time: Time.zone.parse("15/06/2023 18:00"), end_time: Time.zone.parse("15/06/2023 20:00"), slot_capacity: 12, restaurant: restaurant)
timeslot25 = TimeSlot.create(start_time: Time.zone.parse("15/06/2023 18:30"), end_time: Time.zone.parse("15/06/2023 20:30"), slot_capacity: 12, restaurant: restaurant)
timeslot26 = TimeSlot.create(start_time: Time.zone.parse("15/06/2023 19:00"), end_time: Time.zone.parse("15/06/2023 21:00"), slot_capacity: 12, restaurant: restaurant)
timeslot27 = TimeSlot.create(start_time: Time.zone.parse("15/06/2023 19:30"), end_time: Time.zone.parse("15/06/2023 21:30"), slot_capacity: 12, restaurant: restaurant)
timeslot28 = TimeSlot.create(start_time: Time.zone.parse("15/06/2023 20:00"), end_time: Time.zone.parse("15/06/2023 22:00"), slot_capacity: 12, restaurant: restaurant)
timeslot29 = TimeSlot.create(start_time: Time.zone.parse("15/06/2023 20:30"), end_time: Time.zone.parse("15/06/2023 22:30"), slot_capacity: 12, restaurant: restaurant)
timeslot30 = TimeSlot.create(start_time: Time.zone.parse("15/06/2023 21:00"), end_time: Time.zone.parse("15/06/2023 23:00"), slot_capacity: 12, restaurant: restaurant)
timeslot31 = TimeSlot.create(start_time: Time.zone.parse("15/06/2023 21:30"), end_time: Time.zone.parse("15/06/2023 23:30"), slot_capacity: 12, restaurant: restaurant)
timeslot32 = TimeSlot.create(start_time: Time.zone.parse("15/06/2023 22:00"), end_time: Time.zone.parse("15/06/2023 00:00"), slot_capacity: 12, restaurant: restaurant)

timeslot33 = TimeSlot.create(start_time: Time.zone.parse("16/06/2023 18:00"), end_time: Time.zone.parse("16/06/2023 20:00"), slot_capacity: 12, restaurant: restaurant)
timeslot34 = TimeSlot.create(start_time: Time.zone.parse("16/06/2023 18:30"), end_time: Time.zone.parse("16/06/2023 20:30"), slot_capacity: 12, restaurant: restaurant)
timeslot35 = TimeSlot.create(start_time: Time.zone.parse("16/06/2023 19:00"), end_time: Time.zone.parse("16/06/2023 21:00"), slot_capacity: 12, restaurant: restaurant)
timeslot36 = TimeSlot.create(start_time: Time.zone.parse("16/06/2023 19:30"), end_time: Time.zone.parse("16/06/2023 21:30"), slot_capacity: 12, restaurant: restaurant)
timeslot37 = TimeSlot.create(start_time: Time.zone.parse("16/06/2023 20:00"), end_time: Time.zone.parse("16/06/2023 22:00"), slot_capacity: 12, restaurant: restaurant)
timeslot38 = TimeSlot.create(start_time: Time.zone.parse("16/06/2023 20:30"), end_time: Time.zone.parse("16/06/2023 22:30"), slot_capacity: 12, restaurant: restaurant)
timeslot39 = TimeSlot.create(start_time: Time.zone.parse("16/06/2023 21:00"), end_time: Time.zone.parse("16/06/2023 23:00"), slot_capacity: 12, restaurant: restaurant)
timeslot40 = TimeSlot.create(start_time: Time.zone.parse("16/06/2023 21:30"), end_time: Time.zone.parse("16/06/2023 23:30"), slot_capacity: 12, restaurant: restaurant)
timeslot41 = TimeSlot.create(start_time: Time.zone.parse("16/06/2023 22:00"), end_time: Time.zone.parse("16/06/2023 00:00"), slot_capacity: 12, restaurant: restaurant)

timeslot42 = TimeSlot.create(start_time: Time.zone.parse("17/06/2023 18:00"), end_time: Time.zone.parse("17/06/2023 20:00"), slot_capacity: 12, restaurant: restaurant)
timeslot43 = TimeSlot.create(start_time: Time.zone.parse("17/06/2023 18:30"), end_time: Time.zone.parse("17/06/2023 20:30"), slot_capacity: 12, restaurant: restaurant)
timeslot44 = TimeSlot.create(start_time: Time.zone.parse("17/06/2023 19:00"), end_time: Time.zone.parse("17/06/2023 21:00"), slot_capacity: 12, restaurant: restaurant)
timeslot45 = TimeSlot.create(start_time: Time.zone.parse("17/06/2023 19:30"), end_time: Time.zone.parse("17/06/2023 21:30"), slot_capacity: 12, restaurant: restaurant)
timeslot46 = TimeSlot.create(start_time: Time.zone.parse("17/06/2023 20:00"), end_time: Time.zone.parse("17/06/2023 22:00"), slot_capacity: 12, restaurant: restaurant)
timeslot47 = TimeSlot.create(start_time: Time.zone.parse("17/06/2023 20:30"), end_time: Time.zone.parse("17/06/2023 22:30"), slot_capacity: 12, restaurant: restaurant)
timeslot48 = TimeSlot.create(start_time: Time.zone.parse("17/06/2023 21:00"), end_time: Time.zone.parse("17/06/2023 23:00"), slot_capacity: 12, restaurant: restaurant)
timeslot49 = TimeSlot.create(start_time: Time.zone.parse("17/06/2023 21:30"), end_time: Time.zone.parse("17/06/2023 23:30"), slot_capacity: 12, restaurant: restaurant)
timeslot50 = TimeSlot.create(start_time: Time.zone.parse("17/06/2023 22:00"), end_time: Time.zone.parse("17/06/2023 00:00"), slot_capacity: 12, restaurant: restaurant)

timeslot51 = TimeSlot.create(start_time: Time.zone.parse("18/06/2023 18:00"), end_time: Time.zone.parse("18/06/2023 20:00"), slot_capacity: 12, restaurant: restaurant)
timeslot52 = TimeSlot.create(start_time: Time.zone.parse("18/06/2023 18:30"), end_time: Time.zone.parse("18/06/2023 20:30"), slot_capacity: 12, restaurant: restaurant)
timeslot53 = TimeSlot.create(start_time: Time.zone.parse("18/06/2023 19:00"), end_time: Time.zone.parse("18/06/2023 21:00"), slot_capacity: 12, restaurant: restaurant)
timeslot54 = TimeSlot.create(start_time: Time.zone.parse("18/06/2023 19:30"), end_time: Time.zone.parse("18/06/2023 21:30"), slot_capacity: 12, restaurant: restaurant)
timeslot55 = TimeSlot.create(start_time: Time.zone.parse("18/06/2023 20:00"), end_time: Time.zone.parse("18/06/2023 22:00"), slot_capacity: 12, restaurant: restaurant)
timeslot56 = TimeSlot.create(start_time: Time.zone.parse("18/06/2023 20:30"), end_time: Time.zone.parse("18/06/2023 22:30"), slot_capacity: 12, restaurant: restaurant)
timeslot57 = TimeSlot.create(start_time: Time.zone.parse("18/06/2023 21:00"), end_time: Time.zone.parse("18/06/2023 23:00"), slot_capacity: 12, restaurant: restaurant)
timeslot58 = TimeSlot.create(start_time: Time.zone.parse("18/06/2023 21:30"), end_time: Time.zone.parse("18/06/2023 23:30"), slot_capacity: 12, restaurant: restaurant)
timeslot59 = TimeSlot.create(start_time: Time.zone.parse("18/06/2023 22:00"), end_time: Time.zone.parse("18/06/2023 00:00"), slot_capacity: 12, restaurant: restaurant)

timeslot60 = TimeSlot.create(start_time: Time.zone.parse("19/06/2023 18:00"), end_time: Time.zone.parse("19/06/2023 20:00"), slot_capacity: 12, restaurant: restaurant)
timeslot61 = TimeSlot.create(start_time: Time.zone.parse("19/06/2023 18:30"), end_time: Time.zone.parse("19/06/2023 20:30"), slot_capacity: 12, restaurant: restaurant)
timeslot62 = TimeSlot.create(start_time: Time.zone.parse("19/06/2023 19:00"), end_time: Time.zone.parse("19/06/2023 21:00"), slot_capacity: 12, restaurant: restaurant)
timeslot63 = TimeSlot.create(start_time: Time.zone.parse("19/06/2023 19:30"), end_time: Time.zone.parse("19/06/2023 21:30"), slot_capacity: 12, restaurant: restaurant)
timeslot64 = TimeSlot.create(start_time: Time.zone.parse("19/06/2023 20:00"), end_time: Time.zone.parse("19/06/2023 22:00"), slot_capacity: 12, restaurant: restaurant)
timeslot65 = TimeSlot.create(start_time: Time.zone.parse("19/06/2023 20:30"), end_time: Time.zone.parse("19/06/2023 22:30"), slot_capacity: 12, restaurant: restaurant)
timeslot66 = TimeSlot.create(start_time: Time.zone.parse("19/06/2023 21:00"), end_time: Time.zone.parse("19/06/2023 23:00"), slot_capacity: 12, restaurant: restaurant)
timeslot67 = TimeSlot.create(start_time: Time.zone.parse("19/06/2023 21:30"), end_time: Time.zone.parse("19/06/2023 23:30"), slot_capacity: 12, restaurant: restaurant)
timeslot68 = TimeSlot.create(start_time: Time.zone.parse("19/06/2023 22:00"), end_time: Time.zone.parse("19/06/2023 00:00"), slot_capacity: 12, restaurant: restaurant)

timeslot69 = TimeSlot.create(start_time: Time.zone.parse("20/06/2023 18:00"), end_time: Time.zone.parse("20/06/2023 20:00"), slot_capacity: 12, restaurant: restaurant)
timeslot70 = TimeSlot.create(start_time: Time.zone.parse("20/06/2023 18:30"), end_time: Time.zone.parse("20/06/2023 20:30"), slot_capacity: 12, restaurant: restaurant)
timeslot71 = TimeSlot.create(start_time: Time.zone.parse("20/06/2023 19:00"), end_time: Time.zone.parse("20/06/2023 21:00"), slot_capacity: 12, restaurant: restaurant)
timeslot72 = TimeSlot.create(start_time: Time.zone.parse("20/06/2023 19:30"), end_time: Time.zone.parse("20/06/2023 21:30"), slot_capacity: 12, restaurant: restaurant)
timeslot73 = TimeSlot.create(start_time: Time.zone.parse("20/06/2023 20:00"), end_time: Time.zone.parse("20/06/2023 22:00"), slot_capacity: 12, restaurant: restaurant)
timeslot74 = TimeSlot.create(start_time: Time.zone.parse("20/06/2023 20:30"), end_time: Time.zone.parse("20/06/2023 22:30"), slot_capacity: 12, restaurant: restaurant)
timeslot75 = TimeSlot.create(start_time: Time.zone.parse("20/06/2023 21:00"), end_time: Time.zone.parse("20/06/2023 23:00"), slot_capacity: 12, restaurant: restaurant)
timeslot76 = TimeSlot.create(start_time: Time.zone.parse("20/06/2023 21:30"), end_time: Time.zone.parse("20/06/2023 23:30"), slot_capacity: 12, restaurant: restaurant)
timeslot77 = TimeSlot.create(start_time: Time.zone.parse("20/06/2023 22:00"), end_time: Time.zone.parse("20/06/2023 00:00"), slot_capacity: 12, restaurant: restaurant)

timeslot78 = TimeSlot.create(start_time: Time.zone.parse("21/06/2023 18:00"), end_time: Time.zone.parse("21/06/2023 20:00"), slot_capacity: 12, restaurant: restaurant)
timeslot79 = TimeSlot.create(start_time: Time.zone.parse("21/06/2023 18:30"), end_time: Time.zone.parse("21/06/2023 20:30"), slot_capacity: 12, restaurant: restaurant)
timeslot80 = TimeSlot.create(start_time: Time.zone.parse("21/06/2023 19:00"), end_time: Time.zone.parse("21/06/2023 21:00"), slot_capacity: 12, restaurant: restaurant)
timeslot81 = TimeSlot.create(start_time: Time.zone.parse("21/06/2023 19:30"), end_time: Time.zone.parse("21/06/2023 21:30"), slot_capacity: 12, restaurant: restaurant)
timeslot82 = TimeSlot.create(start_time: Time.zone.parse("21/06/2023 20:00"), end_time: Time.zone.parse("21/06/2023 22:00"), slot_capacity: 12, restaurant: restaurant)
timeslot83 = TimeSlot.create(start_time: Time.zone.parse("21/06/2023 20:30"), end_time: Time.zone.parse("21/06/2023 22:30"), slot_capacity: 12, restaurant: restaurant)
timeslot84 = TimeSlot.create(start_time: Time.zone.parse("21/06/2023 21:00"), end_time: Time.zone.parse("21/06/2023 23:00"), slot_capacity: 12, restaurant: restaurant)
timeslot85 = TimeSlot.create(start_time: Time.zone.parse("21/06/2023 21:30"), end_time: Time.zone.parse("21/06/2023 23:30"), slot_capacity: 12, restaurant: restaurant)
timeslot86 = TimeSlot.create(start_time: Time.zone.parse("21/06/2023 22:00"), end_time: Time.zone.parse("21/06/2023 00:00"), slot_capacity: 12, restaurant: restaurant)

timeslot87 = TimeSlot.create(start_time: Time.zone.parse("22/06/2023 18:00"), end_time: Time.zone.parse("22/06/2023 20:00"), slot_capacity: 12, restaurant: restaurant)
timeslot88 = TimeSlot.create(start_time: Time.zone.parse("22/06/2023 18:30"), end_time: Time.zone.parse("22/06/2023 20:30"), slot_capacity: 12, restaurant: restaurant)
timeslot89 = TimeSlot.create(start_time: Time.zone.parse("22/06/2023 19:00"), end_time: Time.zone.parse("22/06/2023 21:00"), slot_capacity: 12, restaurant: restaurant)
timeslot90 = TimeSlot.create(start_time: Time.zone.parse("22/06/2023 19:30"), end_time: Time.zone.parse("22/06/2023 21:30"), slot_capacity: 12, restaurant: restaurant)
timeslot91 = TimeSlot.create(start_time: Time.zone.parse("22/06/2023 20:00"), end_time: Time.zone.parse("22/06/2023 22:00"), slot_capacity: 12, restaurant: restaurant)
timeslot92 = TimeSlot.create(start_time: Time.zone.parse("22/06/2023 20:30"), end_time: Time.zone.parse("22/06/2023 22:30"), slot_capacity: 12, restaurant: restaurant)
timeslot93 = TimeSlot.create(start_time: Time.zone.parse("22/06/2023 21:00"), end_time: Time.zone.parse("22/06/2023 23:00"), slot_capacity: 12, restaurant: restaurant)
timeslot94 = TimeSlot.create(start_time: Time.zone.parse("22/06/2023 21:30"), end_time: Time.zone.parse("22/06/2023 23:30"), slot_capacity: 12, restaurant: restaurant)
timeslot95 = TimeSlot.create(start_time: Time.zone.parse("22/06/2023 22:00"), end_time: Time.zone.parse("22/06/2023 00:00"), slot_capacity: 12, restaurant: restaurant)

timeslot96 = TimeSlot.create(start_time: Time.zone.parse("23/06/2023 18:00"), end_time: Time.zone.parse("23/06/2023 20:00"), slot_capacity: 12, restaurant: restaurant)
timeslot97 = TimeSlot.create(start_time: Time.zone.parse("23/06/2023 18:30"), end_time: Time.zone.parse("23/06/2023 20:30"), slot_capacity: 12, restaurant: restaurant)
timeslot98 = TimeSlot.create(start_time: Time.zone.parse("23/06/2023 19:00"), end_time: Time.zone.parse("23/06/2023 21:00"), slot_capacity: 12, restaurant: restaurant)
timeslot99 = TimeSlot.create(start_time: Time.zone.parse("23/06/2023 19:30"), end_time: Time.zone.parse("23/06/2023 21:30"), slot_capacity: 12, restaurant: restaurant)
timeslot100 = TimeSlot.create(start_time: Time.zone.parse("23/06/2023 20:00"), end_time: Time.zone.parse("23/06/2023 22:00"), slot_capacity: 12, restaurant: restaurant)
timeslot101 = TimeSlot.create(start_time: Time.zone.parse("23/06/2023 20:30"), end_time: Time.zone.parse("23/06/2023 22:30"), slot_capacity: 12, restaurant: restaurant)
timeslot102 = TimeSlot.create(start_time: Time.zone.parse("23/06/2023 21:00"), end_time: Time.zone.parse("23/06/2023 23:00"), slot_capacity: 12, restaurant: restaurant)
timeslot103 = TimeSlot.create(start_time: Time.zone.parse("23/06/2023 21:30"), end_time: Time.zone.parse("23/06/2023 23:30"), slot_capacity: 12, restaurant: restaurant)
timeslot104 = TimeSlot.create(start_time: Time.zone.parse("23/06/2023 22:00"), end_time: Time.zone.parse("23/06/2023 00:00"), slot_capacity: 12, restaurant: restaurant)

timeslot105 = TimeSlot.create(start_time: Time.zone.parse("24/06/2023 18:00"), end_time: Time.zone.parse("24/06/2023 20:00"), slot_capacity: 12, restaurant: restaurant)
timeslot106 = TimeSlot.create(start_time: Time.zone.parse("24/06/2023 18:30"), end_time: Time.zone.parse("24/06/2023 20:30"), slot_capacity: 12, restaurant: restaurant)
timeslot107 = TimeSlot.create(start_time: Time.zone.parse("24/06/2023 19:00"), end_time: Time.zone.parse("24/06/2023 21:00"), slot_capacity: 12, restaurant: restaurant)

timeslot108 = TimeSlot.create(start_time: Time.zone.parse("25/06/2023 19:30"), end_time: Time.zone.parse("25/06/2023 21:30"), slot_capacity: 12, restaurant: restaurant)
timeslot109 = TimeSlot.create(start_time: Time.zone.parse("25/06/2023 20:00"), end_time: Time.zone.parse("25/06/2023 22:00"), slot_capacity: 12, restaurant: restaurant)
timeslot110 = TimeSlot.create(start_time: Time.zone.parse("25/06/2023 20:30"), end_time: Time.zone.parse("25/06/2023 22:30"), slot_capacity: 12, restaurant: restaurant)

timeslot111 = TimeSlot.create(start_time: Time.zone.parse("26/06/2023 21:00"), end_time: Time.zone.parse("26/06/2023 23:00"), slot_capacity: 12, restaurant: restaurant)
timeslot112 = TimeSlot.create(start_time: Time.zone.parse("27/06/2023 21:30"), end_time: Time.zone.parse("27/06/2023 23:30"), slot_capacity: 12, restaurant: restaurant)
timeslot113 = TimeSlot.create(start_time: Time.zone.parse("28/06/2023 22:00"), end_time: Time.zone.parse("28/06/2023 00:00"), slot_capacity: 12, restaurant: restaurant)
timeslot114 = TimeSlot.create(start_time: Time.zone.parse("29/06/2023 18:00"), end_time: Time.zone.parse("29/06/2023 20:00"), slot_capacity: 12, restaurant: restaurant)
timeslot115 = TimeSlot.create(start_time: Time.zone.parse("30/06/2023 18:30"), end_time: Time.zone.parse("30/06/2023 20:30"), slot_capacity: 12, restaurant: restaurant)


new_date = Date.new(2023, 6, 6)

timeslot1.start_time = timeslot1.start_time.change(year: new_date.year, month: new_date.month, day: new_date.day)
Reservation.create(first_name: "Ingrid", last_name: "Smith", email: "ingrid@gmail.com", phone_number: "+447083567652", covers: 12, dietary_requirements: "Nuts", reservation_notes: "Anniversary", time_slot: timeslot1, date: Time.zone.parse("01/06/2023"), status: "FINISHED")
Reservation.create(first_name: "John", last_name: "Doe", email: "john@gmail.com", phone_number: "+447083590651", covers: 12, dietary_requirements: "Nuts", reservation_notes: "Birthday", time_slot: timeslot2, date: Time.zone.parse("02/06/2023"), status: "FINISHED")
Reservation.create(first_name: "Jane", last_name: "Dohya", email: "jane@gmail.com", phone_number: "+447083547869", covers: 12, dietary_requirements: "Nuts", reservation_notes: "Anniversary", time_slot: timeslot3, date: Time.zone.parse("03/06/2023"), status: "FINISHED")
Reservation.create(first_name: "Bob", last_name: "Michael", email: "bob@gmail.com", phone_number: "+447086567334", covers: 11, dietary_requirements: "Nuts", reservation_notes: "Anniversary", time_slot: timeslot4, date: Time.zone.parse("04/06/2023"), status: "FINISHED")
Reservation.create(first_name: "Jake", last_name: "Frota", email: "jake@gmail.com", phone_number: "+447083567652", covers: 12, dietary_requirements: "Nuts", reservation_notes: "Anniversary", time_slot: timeslot5, date: Time.zone.parse("05/06/2023"), status: "FINISHED")
Reservation.create(first_name: "Robert", last_name: "Zenetsky", email: "robert@gmail.com", phone_number: "+447083563209", covers: 11, dietary_requirements: "Nuts", reservation_notes: "Birthday", time_slot: timeslot7, date: Time.zone.parse("07/06/2023"), status: "FINISHED")
Reservation.create(first_name: "Liana", last_name: "Bolein", email: "liana@gmail.com", phone_number: "+447083577789", covers: 11, dietary_requirements: "Nuts", reservation_notes: "Birthday", time_slot: timeslot9, date: Time.zone.parse("09/06/2023"), status: "FINISHED")
Reservation.create(first_name: "Elizabeth", last_name: "Garner", email: "liz@gmail.com", phone_number: "+447083567111", covers: 8, dietary_requirements: "Nuts", reservation_notes: "Party", time_slot: timeslot26, date: Time.zone.parse("15/06/2023"), status: "FINISHED")
Reservation.create(first_name: "Elizabeth", last_name: "Garner", email: "liz@gmail.com", phone_number: "+447083567111", covers: 4, dietary_requirements: "Nuts", reservation_notes: "Business", time_slot: timeslot11, date: Time.zone.parse("10/06/2023"), status: "FINISHED")
Reservation.create(first_name: "Elizabeth", last_name: "Garner", email: "liz@gmail.com", phone_number: "+447083567111", covers: 10, dietary_requirements: "Nuts", reservation_notes: "Birthday", time_slot: timeslot6, date: Time.zone.parse("06/06/2023"), status: "FINISHED")
Reservation.create(first_name: "Mark", last_name: "Foy", email: "mark@gmail.com", phone_number: "+447083544452", covers: 4, dietary_requirements: "None", reservation_notes: "None", time_slot: timeslot35, date: Time.zone.parse("16/06/2023"), status: "BOOKED")
Reservation.create(first_name: "Mark", last_name: "Foy", email: "mark@gmail.com", phone_number: "+447083544452", covers: 9, dietary_requirements: "None", reservation_notes: "Family gathering", time_slot: timeslot12, date: Time.zone.parse("10/06/2023"), status: "FINISHED")
Reservation.create(first_name: "Mark", last_name: "Foy", email: "mark@gmail.com", phone_number: "+447083544452", covers: 12, dietary_requirements: "Nuts", reservation_notes: "Birthday party", time_slot: timeslot8, date: Time.zone.parse("08/06/2023"), status: "FINISHED")

timeslot1.start_time = timeslot1.start_time.change(year: new_date.year, month: new_date.month, day: new_date.day)

puts 'Started creating reservations'

1.times do
  Reservation.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    phone_number: Faker::PhoneNumber.cell_phone_in_e164,
    covers: 12,
    dietary_requirements: %w[Gluten Lactose Nuts Vegan Vegetarian None].sample,
    reservation_notes: %w[Anniversary Birthday Meeting Business None].sample,
    time_slot: timeslot10,
    date: Time.zone.parse("09/06/2023"),
    status: "FINISHED"
  )
end

1.times do
  Reservation.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    phone_number: Faker::PhoneNumber.cell_phone_in_e164,
    covers: (5..6),
    dietary_requirements: %w[Gluten Lactose Nuts Vegan Vegetarian None].sample,
    reservation_notes: %w[Anniversary Birthday Meeting Business None].sample,
    time_slot: timeslot11,
    date: Time.zone.parse("10/06/2023"),
    status: "FINISHED"
  )
end

1.times do
  Reservation.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    phone_number: Faker::PhoneNumber.cell_phone_in_e164,
    covers: (5..6),
    dietary_requirements: %w[Gluten Lactose Nuts Vegan Vegetarian None].sample,
    reservation_notes: %w[Anniversary Birthday Meeting Business None].sample,
    time_slot: timeslot13,
    date: Time.zone.parse("11/06/2023"),
    status: "FINISHED"
  )
end

3.times do
  Reservation.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    phone_number: Faker::PhoneNumber.cell_phone_in_e164,
    covers: 4,
    dietary_requirements: %w[Gluten Lactose Nuts Vegan Vegetarian None].sample,
    reservation_notes: %w[Anniversary Birthday Meeting Business None].sample,
    time_slot: timeslot14,
    date: Time.zone.parse("11/06/2023"),
    status: "FINISHED"
  )
end

3.times do
  Reservation.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    phone_number: Faker::PhoneNumber.cell_phone_in_e164,
    covers: 4,
    dietary_requirements: %w[Gluten Lactose Nuts Vegan Vegetarian None].sample,
    reservation_notes: %w[Anniversary Birthday Meeting Business None].sample,
    time_slot: timeslot15,
    date: Time.zone.parse("12/06/2023"),
    status: "FINISHED"
  )
end

2.times do
  Reservation.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    phone_number: Faker::PhoneNumber.cell_phone_in_e164,
    covers: 4,
    dietary_requirements: %w[Gluten Lactose Nuts Vegan Vegetarian None].sample,
    reservation_notes: %w[Anniversary Birthday Meeting Business None].sample,
    time_slot: timeslot16,
    date: Time.zone.parse("12/06/2023"),
    status: "FINISHED"
  )
end

1.times do
  Reservation.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    phone_number: Faker::PhoneNumber.cell_phone_in_e164,
    covers: 4,
    dietary_requirements: %w[Gluten Lactose Nuts Vegan Vegetarian None].sample,
    reservation_notes: %w[Anniversary Birthday Meeting Business None].sample,
    time_slot: timeslot16,
    date: Time.zone.parse("12/06/2023"),
    status: "CANCELLED"
  )
end

3.times do
  Reservation.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    phone_number: Faker::PhoneNumber.cell_phone_in_e164,
    covers: 4,
    dietary_requirements: %w[Gluten Lactose Nuts Vegan Vegetarian None].sample,
    reservation_notes: %w[Anniversary Birthday Meeting Business None].sample,
    time_slot: timeslot17,
    date: Time.zone.parse("12/06/2023"),
    status: "FINISHED"
  )
end

3.times do
  Reservation.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    phone_number: Faker::PhoneNumber.cell_phone_in_e164,
    covers: rand(2..4),
    dietary_requirements: %w[Gluten Lactose Nuts Vegan Vegetarian None].sample,
    reservation_notes: %w[Anniversary Birthday Meeting Business None].sample,
    time_slot: timeslot18,
    date: Time.zone.parse("13/06/2023"),
    status: "FINISHED"
  )
end

3.times do
  Reservation.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    phone_number: Faker::PhoneNumber.cell_phone_in_e164,
    covers: 4,
    dietary_requirements: %w[Gluten Lactose Nuts Vegan Vegetarian None].sample,
    reservation_notes: %w[Anniversary Birthday Meeting Business None].sample,
    time_slot: timeslot19,
    date: Time.zone.parse("13/06/2023"),
    status: "FINISHED"
  )
end

4.times do
  Reservation.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    phone_number: Faker::PhoneNumber.cell_phone_in_e164,
    covers: 3,
    dietary_requirements: %w[Gluten Lactose Nuts Vegan Vegetarian None].sample,
    reservation_notes: %w[Anniversary Birthday Meeting Business None].sample,
    time_slot: timeslot20,
    date: Time.zone.parse("13/06/2023"),
    status: "FINISHED"
  )
end

4.times do
  Reservation.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    phone_number: Faker::PhoneNumber.cell_phone_in_e164,
    covers: 3,
    dietary_requirements: %w[Gluten Lactose Nuts Vegan Vegetarian None].sample,
    reservation_notes: %w[Anniversary Birthday Meeting Business None].sample,
    time_slot: timeslot21,
    date: Time.zone.parse("14/06/2023"),
    status: "FINISHED"
  )
end

4.times do
  Reservation.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    phone_number: Faker::PhoneNumber.cell_phone_in_e164,
    covers: rand(2..3),
    dietary_requirements: %w[Gluten Lactose Nuts Vegan Vegetarian None].sample,
    reservation_notes: %w[Anniversary Birthday Meeting Business None].sample,
    time_slot: timeslot22,
    date: Time.zone.parse("14/06/2023"),
    status: "FINISHED"
  )
end

1.times do
  Reservation.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    phone_number: Faker::PhoneNumber.cell_phone_in_e164,
    covers: 4,
    dietary_requirements: %w[Gluten Lactose Nuts Vegan Vegetarian None].sample,
    reservation_notes: %w[Anniversary Birthday Meeting Business None].sample,
    time_slot: timeslot23,
    date: Time.zone.parse("14/06/2023"),
    status: "NO-SHOW"
  )
end


2.times do
  Reservation.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    phone_number: Faker::PhoneNumber.cell_phone_in_e164,
    covers: rand(3..4),
    dietary_requirements: %w[Gluten Lactose Nuts Vegan Vegetarian None].sample,
    reservation_notes: %w[Anniversary Birthday Meeting Business None].sample,
    time_slot: timeslot25,
    date: Time.zone.parse("15/06/2023"),
    status: "FINISHED"
  )
end

1.times do
  Reservation.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    phone_number: Faker::PhoneNumber.cell_phone_in_e164,
    covers: 7,
    dietary_requirements: %w[Gluten Lactose Nuts Vegan Vegetarian None].sample,
    reservation_notes: %w[Anniversary Birthday Meeting Business None].sample,
    time_slot: timeslot27,
    date: Time.zone.parse("15/06/2023"),
    status: "FINISHED"
  )
end


2.times do
  Reservation.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    phone_number: Faker::PhoneNumber.cell_phone_in_e164,
    covers: rand(2..5),
    dietary_requirements: %w[Gluten Lactose Nuts Vegan Vegetarian None].sample,
    reservation_notes: %w[Anniversary Birthday Meeting Business None].sample,
    time_slot: timeslot33,
    date: Time.zone.parse("16/06/2023"),
    status: "BOOKED"
  )
end

1.times do
  Reservation.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    phone_number: Faker::PhoneNumber.cell_phone_in_e164,
    covers: 8,
    dietary_requirements: %w[Gluten Lactose Nuts Vegan Vegetarian None].sample,
    reservation_notes: %w[Anniversary Birthday Meeting Business None].sample,
    time_slot: timeslot34,
    date: Time.zone.parse("16/06/2023"),
    status: "BOOKED"
  )
end


3.times do
  Reservation.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    phone_number: Faker::PhoneNumber.cell_phone_in_e164,
    covers: rand(2..4),
    dietary_requirements: %w[Gluten Lactose Nuts Vegan Vegetarian None].sample,
    reservation_notes: %w[Anniversary Birthday Meeting Business None].sample,
    time_slot: timeslot42,
    date: Time.zone.parse("17/06/2023"),
    status: "BOOKED"
  )
end

3.times do
  Reservation.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    phone_number: Faker::PhoneNumber.cell_phone_in_e164,
    covers: rand(2..4),
    dietary_requirements: %w[Gluten Lactose Nuts Vegan Vegetarian None].sample,
    reservation_notes: %w[Anniversary Birthday Meeting Business None].sample,
    time_slot: timeslot43,
    date: Time.zone.parse("17/06/2023"),
    status: "BOOKED"
  )
end

1.times do
  Reservation.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    phone_number: Faker::PhoneNumber.cell_phone_in_e164,
    covers: 4,
    dietary_requirements: %w[Gluten Lactose Nuts Vegan Vegetarian None].sample,
    reservation_notes: %w[Anniversary Birthday Meeting Business None].sample,
    time_slot: timeslot44,
    date: Time.zone.parse("17/06/2023"),
    status: "CANCELLED"
  )
end


3.times do
  Reservation.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    phone_number: Faker::PhoneNumber.cell_phone_in_e164,
    covers: rand(2..4),
    dietary_requirements: %w[Gluten Lactose Nuts Vegan Vegetarian None].sample,
    reservation_notes: %w[Anniversary Birthday Meeting Business None].sample,
    time_slot: timeslot45,
    date: Time.zone.parse("17/06/2023"),
    status: "BOOKED"
  )
end

2.times do
  Reservation.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    phone_number: Faker::PhoneNumber.cell_phone_in_e164,
    covers: rand(2..5),
    dietary_requirements: %w[Gluten Lactose Nuts Vegan Vegetarian None].sample,
    reservation_notes: %w[Anniversary Birthday Meeting Business None].sample,
    time_slot: timeslot47,
    date: Time.zone.parse("17/06/2023"),
    status: "BOOKED"
  )
end

2.times do
  Reservation.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    phone_number: Faker::PhoneNumber.cell_phone_in_e164,
    covers: rand(2..3),
    dietary_requirements: %w[Gluten Lactose Nuts Vegan Vegetarian None].sample,
    reservation_notes: %w[Anniversary Birthday Meeting Business None].sample,
    time_slot: timeslot49,
    date: Time.zone.parse("17/06/2023"),
    status: "CANCELLED"
  )
end

4.times do
  Reservation.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    phone_number: Faker::PhoneNumber.cell_phone_in_e164,
    covers: rand(2..3),
    dietary_requirements: %w[Gluten Lactose Nuts Vegan Vegetarian None].sample,
    reservation_notes: %w[Anniversary Birthday Meeting Business None].sample,
    time_slot: timeslot50,
    date: Time.zone.parse("17/06/2023"),
    status: "BOOKED"
  )
end

3.times do
  Reservation.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    phone_number: Faker::PhoneNumber.cell_phone_in_e164,
    covers: rand(2..4),
    dietary_requirements: %w[Gluten Lactose Nuts Vegan Vegetarian None].sample,
    reservation_notes: %w[Anniversary Birthday Meeting Business None].sample,
    time_slot: timeslot51,
    date: Time.zone.parse("18/06/2023"),
    status: "BOOKED"
  )
end

3.times do
  Reservation.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    phone_number: Faker::PhoneNumber.cell_phone_in_e164,
    covers: rand(2..4),
    dietary_requirements: %w[Gluten Lactose Nuts Vegan Vegetarian None].sample,
    reservation_notes: %w[Anniversary Birthday Meeting Business None].sample,
    time_slot: timeslot52,
    date: Time.zone.parse("18/06/2023"),
    status: "BOOKED"
  )
end

1.times do
  Reservation.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    phone_number: Faker::PhoneNumber.cell_phone_in_e164,
    covers: rand(2..4),
    dietary_requirements: %w[Gluten Lactose Nuts Vegan Vegetarian None].sample,
    reservation_notes: %w[Anniversary Birthday Meeting Business None].sample,
    time_slot: timeslot53,
    date: Time.zone.parse("18/06/2023"),
    status: "CANCELLED"
  )
end

2.times do
  Reservation.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    phone_number: Faker::PhoneNumber.cell_phone_in_e164,
    covers: rand(2..6),
    dietary_requirements: %w[Gluten Lactose Nuts Vegan Vegetarian None].sample,
    reservation_notes: %w[Anniversary Birthday Meeting Business None].sample,
    time_slot: timeslot59,
    date: Time.zone.parse("18/06/2023"),
    status: "BOOKED"
  )
end

3.times do
  Reservation.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    phone_number: Faker::PhoneNumber.cell_phone_in_e164,
    covers: rand(2..4),
    dietary_requirements: %w[Gluten Lactose Nuts Vegan Vegetarian None].sample,
    reservation_notes: %w[Anniversary Birthday Meeting Business None].sample,
    time_slot: timeslot60,
    date: Time.zone.parse("19/06/2023"),
    status: "BOOKED"
  )
end

3.times do
  Reservation.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    phone_number: Faker::PhoneNumber.cell_phone_in_e164,
    covers: rand(2..4),
    dietary_requirements: %w[Gluten Lactose Nuts Vegan Vegetarian None].sample,
    reservation_notes: %w[Anniversary Birthday Meeting Business None].sample,
    time_slot: timeslot63,
    date: Time.zone.parse("19/06/2023"),
    status: "BOOKED"
  )
end

3.times do
  Reservation.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    phone_number: Faker::PhoneNumber.cell_phone_in_e164,
    covers: rand(2..4),
    dietary_requirements: %w[Gluten Lactose Nuts Vegan Vegetarian None].sample,
    reservation_notes: %w[Anniversary Birthday Meeting Business None].sample,
    time_slot: timeslot65,
    date: Time.zone.parse("19/06/2023"),
    status: "BOOKED"
  )
end

2.times do
  Reservation.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    phone_number: Faker::PhoneNumber.cell_phone_in_e164,
    covers: rand(3..5),
    dietary_requirements: %w[Gluten Lactose Nuts Vegan Vegetarian None].sample,
    reservation_notes: %w[Anniversary Birthday Meeting Business None].sample,
    time_slot: timeslot69,
    date: Time.zone.parse("20/06/2023"),
    status: "BOOKED"
  )
end

2.times do
  Reservation.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    phone_number: Faker::PhoneNumber.cell_phone_in_e164,
    covers: rand(3..5),
    dietary_requirements: %w[Gluten Lactose Nuts Vegan Vegetarian None].sample,
    reservation_notes: %w[Anniversary Birthday Meeting Business None].sample,
    time_slot: timeslot72,
    date: Time.zone.parse("20/06/2023"),
    status: "BOOKED"
  )
end

2.times do
  Reservation.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    phone_number: Faker::PhoneNumber.cell_phone_in_e164,
    covers: rand(3..5),
    dietary_requirements: %w[Gluten Lactose Nuts Vegan Vegetarian None].sample,
    reservation_notes: %w[Anniversary Birthday Meeting Business None].sample,
    time_slot: timeslot75,
    date: Time.zone.parse("20/06/2023"),
    status: "BOOKED"
  )
end

3.times do
  Reservation.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    phone_number: Faker::PhoneNumber.cell_phone_in_e164,
    covers: rand(2..5),
    dietary_requirements: %w[Gluten Lactose Nuts Vegan Vegetarian None].sample,
    reservation_notes: %w[Anniversary Birthday Meeting Business None].sample,
    time_slot: timeslot76,
    date: Time.zone.parse("20/06/2023"),
    status: "BOOKED"
  )
end

2.times do
  Reservation.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    phone_number: Faker::PhoneNumber.cell_phone_in_e164,
    covers: rand(2..6),
    dietary_requirements: %w[Gluten Lactose Nuts Vegan Vegetarian None].sample,
    reservation_notes: %w[Anniversary Birthday Meeting Business None].sample,
    time_slot: timeslot78,
    date: Time.zone.parse("21/06/2023"),
    status: "BOOKED"
  )
end

3.times do
  Reservation.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    phone_number: Faker::PhoneNumber.cell_phone_in_e164,
    covers: rand(2..4),
    dietary_requirements: %w[Gluten Lactose Nuts Vegan Vegetarian None].sample,
    reservation_notes: %w[Anniversary Birthday Meeting Business None].sample,
    time_slot: timeslot79,
    date: Time.zone.parse("21/06/2023"),
    status: "BOOKED"
  )
end

3.times do
  Reservation.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    phone_number: Faker::PhoneNumber.cell_phone_in_e164,
    covers: rand(3..4),
    dietary_requirements: %w[Gluten Lactose Nuts Vegan Vegetarian None].sample,
    reservation_notes: %w[Anniversary Birthday Meeting Business None].sample,
    time_slot: timeslot85,
    date: Time.zone.parse("21/06/2023"),
    status: "BOOKED"
  )
end

3.times do
  Reservation.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    phone_number: Faker::PhoneNumber.cell_phone_in_e164,
    covers: rand(3..4),
    dietary_requirements: %w[Gluten Lactose Nuts Vegan Vegetarian None].sample,
    reservation_notes: %w[Anniversary Birthday Meeting Business None].sample,
    time_slot: timeslot85,
    date: Time.zone.parse("21/06/2023"),
    status: "BOOKED"
  )
end

2.times do
  Reservation.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    phone_number: Faker::PhoneNumber.cell_phone_in_e164,
    covers: rand(4..6),
    dietary_requirements: %w[Gluten Lactose Nuts Vegan Vegetarian None].sample,
    reservation_notes: %w[Anniversary Birthday Meeting Business None].sample,
    time_slot: timeslot87,
    date: Time.zone.parse("22/06/2023"),
    status: "BOOKED"
  )
end

2.times do
  Reservation.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    phone_number: Faker::PhoneNumber.cell_phone_in_e164,
    covers: rand(3..6),
    dietary_requirements: %w[Gluten Lactose Nuts Vegan Vegetarian None].sample,
    reservation_notes: %w[Anniversary Birthday Meeting Business None].sample,
    time_slot: timeslot88,
    date: Time.zone.parse("22/06/2023"),
    status: "BOOKED"
  )
end

2.times do
  Reservation.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    phone_number: Faker::PhoneNumber.cell_phone_in_e164,
    covers: rand(5..6),
    dietary_requirements: %w[Gluten Lactose Nuts Vegan Vegetarian None].sample,
    reservation_notes: %w[Anniversary Birthday Meeting Business None].sample,
    time_slot: timeslot90,
    date: Time.zone.parse("22/06/2023"),
    status: "BOOKED"
  )
end

1.times do
  Reservation.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    phone_number: Faker::PhoneNumber.cell_phone_in_e164,
    covers: 12,
    dietary_requirements: %w[Gluten Lactose Nuts Vegan Vegetarian None].sample,
    reservation_notes: %w[Anniversary Birthday Meeting Business None].sample,
    time_slot: timeslot94,
    date: Time.zone.parse("22/06/2023"),
    status: "BOOKED"
  )
end

2.times do
  Reservation.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    phone_number: Faker::PhoneNumber.cell_phone_in_e164,
    covers: rand(2..6),
    dietary_requirements: %w[Gluten Lactose Nuts Vegan Vegetarian None].sample,
    reservation_notes: %w[Anniversary Birthday Meeting Business None].sample,
    time_slot: timeslot96,
    date: Time.zone.parse("23/06/2023"),
    status: "BOOKED"
  )
end

2.times do
  Reservation.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    phone_number: Faker::PhoneNumber.cell_phone_in_e164,
    covers: rand(5..6),
    dietary_requirements: %w[Gluten Lactose Nuts Vegan Vegetarian None].sample,
    reservation_notes: %w[Anniversary Birthday Meeting Business None].sample,
    time_slot: timeslot100,
    date: Time.zone.parse("23/06/2023"),
    status: "BOOKED"
  )
end

2.times do
  Reservation.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    phone_number: Faker::PhoneNumber.cell_phone_in_e164,
    covers: rand(4..6),
    dietary_requirements: %w[Gluten Lactose Nuts Vegan Vegetarian None].sample,
    reservation_notes: %w[Anniversary Birthday Meeting Business None].sample,
    time_slot: timeslot105,
    date: Time.zone.parse("24/06/2023"),
    status: "BOOKED"
  )
end

2.times do
  Reservation.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    phone_number: Faker::PhoneNumber.cell_phone_in_e164,
    covers: rand(3..6),
    dietary_requirements: %w[Gluten Lactose Nuts Vegan Vegetarian None].sample,
    reservation_notes: %w[Anniversary Birthday Meeting Business None].sample,
    time_slot: timeslot108,
    date: Time.zone.parse("25/06/2023"),
    status: "BOOKED"
  )
end

2.times do
  Reservation.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    phone_number: Faker::PhoneNumber.cell_phone_in_e164,
    covers: rand(4..6),
    dietary_requirements: %w[Gluten Lactose Nuts Vegan Vegetarian None].sample,
    reservation_notes: %w[Anniversary Birthday Meeting Business None].sample,
    time_slot: timeslot111,
    date: Time.zone.parse("26/06/2023"),
    status: "BOOKED"
  )
end

2.times do
  Reservation.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    phone_number: Faker::PhoneNumber.cell_phone_in_e164,
    covers: rand(5..6),
    dietary_requirements: %w[Gluten Lactose Nuts Vegan Vegetarian None].sample,
    reservation_notes: %w[Anniversary Birthday Meeting Business None].sample,
    time_slot: timeslot112,
    date: Time.zone.parse("27/06/2023"),
    status: "BOOKED"
  )
end

2.times do
  Reservation.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    phone_number: Faker::PhoneNumber.cell_phone_in_e164,
    covers: rand(5..6),
    dietary_requirements: %w[Gluten Lactose Nuts Vegan Vegetarian None].sample,
    reservation_notes: %w[Anniversary Birthday Meeting Business None].sample,
    time_slot: timeslot113,
    date: Time.zone.parse("28/06/2023"),
    status: "BOOKED"
  )
end
puts 'All reservations created!'
