require 'sinatra'
require 'sinatra/reloader' if development?  

get "/" do

  erb :get_name

end

post '/post_name' do

  bname = params[:user_name]
  erb :get_age, :locals => {:name => bname}  

end

post '/post_age' do

  bage = params[:user_age]
  bname = params[:user_name]
  erb :get_numbers, :locals => {:name => bname, :age => bage}

end

post '/post_numbers' do

  bname = params[:user_name]
  bage = params[:user_age]
  one = params[:num_1]
  two = params[:num_2]
  three = params[:num_3]
 
  sum = one.to_i + two.to_i + three.to_i
  
  compare = (sum < bage.to_i) ? "less" : "greater"
  
  "Howdy #{bname}. 
  <br>
  You are #{bage} years old.  
  <br>
  Your favorite numbers are #{one}, #{two}, and #{three}.  
  <br>
  The sum of your favorite numbers is #{sum}, which is #{compare} than your age." 

end