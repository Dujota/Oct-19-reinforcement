require 'pry'
require 'pp'

seating_plan = [
  [nil, "Pumpkin", nil, nil],
  ["Socks", nil, "Mimi", nil],
  ["Gismo", "Shadow", nil, nil],
  ["Smokey","Toast","Pacha","Mau"]
]

seating_plan.each_with_index do |row, row_index|
  # puts "#{index} index is #{row}"
  # puts "****************************************"
  row.each_with_index do |seat, seat_index|
    if seat == nil
      puts
     p "Row # #{row_index + 1} seat #{seat_index + 1} is empty"
     puts "Take the seat? y/n"
     take_seat = gets.chomp.to_s
     if take_seat.downcase == 'y'
       puts "What is your name?"
       name = gets.chomp.to_s
       seats_in_row = seating_plan[row_index]
       seats_in_row.insert(seat_index, name)
       seats_in_row.delete_at(seat_index + 1)
     end
    end
  end
end

pp seating_plan
