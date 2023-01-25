def find_routes(routes)
  actual_routes = []
  # actual_routes << routes[0][0]
  # actual_routes << routes[0][1]

  # current_route = routes[0][1]
  len = routes.length - 1

  freq = routes.flatten.tally
  smallest_freq = freq.select { |k, v| k if v == 1 }.keys


  routes.each do |r|
    if smallest_freq.include? r[0]
      @initial_route = r[0]
      @second_route = r[1]
    end
  end
  actual_routes << @initial_route
  actual_routes << @second_route
  current_route = @second_route

  len.times do
    routes.each do |r|
      if r[0] == current_route
        actual_routes << r[1]
        current_route = r[1]
      end
    end
  end

  actual_routes.join(', ')
end

routes = [['USA', 'BRA'], ['JPN', 'PHL'], ['BRA', 'UAE'], ['UAE', 'JPN']]
# r = [["MNL", "TAG"], ["CEB", "TAC"], ["TAG", "CEB"], ["TAC", "BOR"]]
r = [["Chicago", "Winnipeg"], ["Halifax", "Montreal"], ["Montreal", "Toronto"], ["Toronto", "Chicago"], ["Winnipeg", "Seattle"]]
find_routes(r)
