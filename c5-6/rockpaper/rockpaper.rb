require 'sinatra'



get '/' do 
	weapons = ["rock", "paper", "scissors"]
	@comp_weapon = weapons.shuffle().first()
	erb :play
end

get '/make_answer/:my_weapon' do |my_weapon|
	"Your weapon is #{my_weapon}"
	# "Computer chooses" +  @comp_weapon
	# if  weapons.index(my_weapon) - weapons.index(comp_weapon) == 1 || weapons.index(my_weapon) - weapons.index(comp_weapon) == -2
	# 	return "You win!"
	# else
	# 	return "Wrong answer!"
	# end

end



