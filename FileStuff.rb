# Returns a File object for writing, creates file
write_handler = File.new("yourSum.out", "w")
 
# Puts the text in the file
write_handler.puts("Random Text").to_s
 
# Closes the file
write_handler.close
 
# Read data from the defined file
data_from_file = File.read("yourSum.out")
 
puts "Data From File : " + data_from_file
 
# Use load to execute the code in another Ruby file
load "OpIntConst.rb"
