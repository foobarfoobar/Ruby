require "active_support/all" # Einbindung ActiveSupport, in Rails nicht noetig

puts 7.days.from_now

puts 9.multiple_of? 3
puts 9.multiple_of? 2

puts 1.ordinalize

puts 5.4321.round(2)
puts 5.4321.round

puts 1.kilobyte
puts 1.kilobyte + 100.bytes

puts Date.tomorrow
puts Date.new(2015, 7, 23).future?
puts Date.new(2015, 7, 23).past?

date = Date.new(2015, 12, 24)
puts date.beginning_of_week
puts date.beginning_of_month
puts date.beginning_of_quarter
puts date.beginning_of_day
puts date.months_ago(2) # date vor 2 Monaten
puts date.months_since(2) # date nach 2 Monaten
puts date.next_week
puts date.next_year
puts date.next_week.next_week

puts 1.day.since # same as 1.day.since(Date.today) or same as 1.day.from_now(Date.today) -> tomorrow
puts 1.day.ago # same as 1.day.until gestern

puts 1.fortnight # 14Tage in sec.
puts 1.week
puts 1.day + 5.hours + 10.minutes 
puts (3.day + 5.hours + 10.minutes)
puts (2.weeks + 3.days) / 1.day # Anzahl Tage von 2 Wochen und 3 Tagen
puts Time.now.to_s.to_time(:locale) # aktuelle lokale Zeit (nicht UTC)

text = "rails"
puts text.at(0)
puts text.at(5)
puts text.at(-1)
text = "Ruby on Rails"
puts text.first
puts text.first(4)

puts text.from(1)
puts text.to(2) # startet bei 0!
puts text.starts_with?("r")

text = "Han \t Solo\n"
puts text.squish
puts text
puts text.squish!
puts text

obst = ["Äpfel", "Birne", "Banane"]
puts obst.to_sentence
puts obst.to_sentence :last_word_connector => ' und '

obst = ["Äpfel", "Birne"]
puts obst.to_sentence
puts obst.to_sentence :two_words_connector => ' und '

list = ["admin", "flights", 12]
puts list.to_param

list = [1,2,3,4,5,6,7]
puts list.in_groups_of(3)
puts list.in_groups(2)
puts list.split(3)
puts list.split { |i| i % 3 == 0 }

puts ["Foo", "Bar", "Qwertz"].sample
puts %w(Foo Bar Qwertz).sample

puts [5].many?
puts [5,7].many?

hash = {:fname=>"Foo", :lname=>"Bar"}
puts hash.stringify_keys
puts hash.stringify_keys.symbolize_keys # same like hash.stringify_keys.to_options
puts hash.except(:lname)

options = {:num_values=>2, :show_all=> true, :bla=>1}
#options.assert_valid_keys(:num_values, :show_all) # raises ArgumentError

options = {:show_all=>true}
puts options.reverse_merge(:show_all=>false, :num_values=>10)
puts options.reverse_update(:show_all=>false, :num_values=>10)

puts [].blank?
puts "   ".blank?
puts [1].blank?
puts [].present?
puts [1].present?

products = nil
if products.present? && products.many?
  puts "mind 2"
else
  puts "<2"
end
# ist gleich
if products.try(:many?)
  puts "mind 2"
else
  puts "<2"
end

puts products.presence
products = "Foo"
puts products.presence

# @page.title = nil
# puts @page.title || 'Unbekannt' liefert Unbekannt
# puts @page.title = '' || 'Unbekannt' liefert ''
# puts @page.presence(title) || 'Unbekannt' liefert unbekannt