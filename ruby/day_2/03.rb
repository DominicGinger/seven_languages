search_phrase = 'Tree'
File.open('./02.rb', 'r') do |f|
  f.each_line do |line|
    p line if line.include? search_phrase
  end
end
