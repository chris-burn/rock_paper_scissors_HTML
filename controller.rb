require "sinatra"
require "sinatra/contrib/all"
require "pry-byebug"


require_relative "./models/rockpaper"

get "/" do
  erb(:home)
end

get "/rockpaper/:str1/:str2" do
  game = RockPaper.new(params[:str1],params[:str2])
  # return "The result is #{game.check_winner()}" #no need for statement as now captured in .erb file
  @calculation = game.check_winner() 
  erb(:result) 
end

get "/about_us" do
  erb(:about_us)
end

get "/rockpaper" do
  erb(:start)
end

get "/rockpaper/rock" do
  erb(:rock_first)
end

get "/rockpaper/paper" do
  erb(:paper_first)
end

get "/rockpaper/scissors" do
  erb(:scissors_first)
end








