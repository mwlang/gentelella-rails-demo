

lines = File.read('kitchen_sink.erb').split("\n")
lines.each_with_index do |line, index|
  if (matches = line.scan(/col\-\w+\-\d+/)).any?
    matches.each do |col|
      size = col.scan(/\d+/).join.to_i
      line.gsub!(col, col.gsub(/\d+/, (size * 2).to_s))
    end
  end
  puts line
end
