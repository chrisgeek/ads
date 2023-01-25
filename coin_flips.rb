def coin_flip(num)
  num.times do |flip|
    x =  rand(1..2)
    x.even? ? 'heads' : 'tails'
  end
end

coin_flip(15)
