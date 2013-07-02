require './app'
run Bikes::App

parse = Parser.new("http://citibikenyc.com/stations/json")
parse.call