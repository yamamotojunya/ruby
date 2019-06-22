def janken
	puts "最初はグー、じゃんけん..."
	puts "[0]:グー"
	puts "[1]:チョキ"
	puts "[2]:パー"

	player_hand = gets.to_i
	program_hand = rand(3)

	jankens = ["グー", "チョキ","パー"]

	puts "あなたの手:#{jankens[player_hand]}, 相手の手:#{jankens[program_hand]}"


	if (player_hand == 0 || player_hand == 1|| player_hand == 2)
		if player_hand == program_hand
	    	puts "あいこで"
	    	return true
	  	elsif(player_hand == 0 && program_hand == 1)||(player_hand == 1 && program_hand == 2)||(player_hand == 2 && program_hand == 0)
	    	puts "あなたの勝ちです"
	    	return false
		else
	    	puts "あなたの負けです"
	    	return false
	   end
	else
		puts "入力された値が無効です"
		return true
	end
end


	next_game = true

	while next_game
  		next_game = janken
	end