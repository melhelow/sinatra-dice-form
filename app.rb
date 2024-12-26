require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:from_c)
end

get("/process_roll") do
  @dice_num = params.fetch("dice").to_i
  @sides_num = params.fetch("sides").to_i
  @results = Array.new(@dice_num) { rand(1..@sides_num) }

  erb(:results)
end

get("/process_again") do
  @dice_num = params.fetch("dice").to_i
  @sides_num = params.fetch("sides").to_i
  @results = Array.new(@dice_num) { rand(1..@sides_num) }

  erb(:results)
end
