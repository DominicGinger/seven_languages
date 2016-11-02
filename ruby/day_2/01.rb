arr = []
(1..16).each do |a|
  arr << a
  if a%4 == 0
    p arr.map{ |i| sprintf('%02d', i) }.join(' ')
    arr = []
  end
end

(1..16).each_slice(4) do |a|
    p a.map{ |i| sprintf('%02d', i) }.join(' ')
end
