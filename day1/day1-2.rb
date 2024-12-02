input = File.readlines("input.txt");
list= [];
i = 0;
leftlist = [];
sortedleftlist=[];
rightlist = [];
sortedrightlist = [];

sum = 0;

input.each do |input|
  list[i] = input.split(" ");
  i=i+1;
end

i=0;

list.each do |row|
  leftlist[i]=row[0]
  rightlist[i]=row[1]
  i=i+1;
end

sortedleftlist = leftlist.sort { |a,b| a<=>b};
sortedrightlist = rightlist.sort { |a,b| a<=>b};

sortedleftlist.each do |item|
  sum = sum + (item.to_i * sortedrightlist.count(item));
end

puts sum;