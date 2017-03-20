m,n = gets.strip.split(' ')
m = m.to_i
n = n.to_i
magazine = gets.strip.split(' ').sort
ransom = gets.strip.split(' ').sort

bool = 'Yes'

ransom.each do |n|
    if magazine.include?(n)
        magazine.slice!(0, magazine.index(n) + 1)
    else
        bool = 'No'
        break
    end
end

puts bool
