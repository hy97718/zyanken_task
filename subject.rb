class Gametask
  
#自分の手と相手の手の表示
  def rock_paper_scissors
    puts "じゃんけん..."
    puts "0(グー)1(チョキ)2(パー)3(戦わない)"
    @ones_hand = gets.chomp.to_i
    @pc_hand = rand(0..2)
    hand_signs = ["グー","チョキ","パー","戦わない"]
    puts "ホイ!"
    puts "あなた: #{hand_signs[@ones_hand]}を出しました"
    puts "相手: #{hand_signs[@pc_hand]}を出しました"
    puts "--------------------------------"
    if @ones_hand == 3
      puts "試合を放棄しました。"
      exit
    end

#ジャンケンの勝敗を判断  
    if @ones_hand == @pc_hand
      puts "あいこで..."
      return true
    elsif @ones_hand == 0 && @pc_hand == 1 || @ones_hand == 1 && @pc_hand == 2 || @ones_hand == 2 && @pc_hand == 0
      puts "お見事！あなたの勝ちです"
      look_this_way
    elsif @ones_hand == 0 && @pc_hand == 2 || @ones_hand == 1 && @pc_hand == 0 || @ones_hand == 2 && @pc_hand == 1
      puts "残念..あなたの負けです"
      look_this_way
    end
  end
# あっち向いてホイゲーム

  def look_this_way
    puts "あっち向いて〜"
    puts "---------------------------"
    puts "0(上)1(下)2(左)3(右)"
    ones_direction = gets.chomp.to_i
    pc_direction = rand(0..3)
    directions = ["上","下","左","右"]

    puts "ホイ!"
    puts "---------------------------"
    puts "あなた: #{directions[ones_direction]}"
    puts "相手: #{directions[pc_direction]}"

#あっち向いてホイの勝敗判定  
    if ones_direction == pc_direction
      if @ones_hand == 0 && @pc_hand == 1 || @ones_hand == 1 && @pc_hand == 2 || @ones_hand == 2 && @pc_hand == 0
        puts "お見事！あなたの勝ちです！また遊んでね！"
        exit
      elsif @ones_hand == 0 && @pc_hand == 2 || @ones_hand == 1 && @pc_hand == 0 || @ones_hand == 2 && @pc_hand == 1
        puts "残念..あなたの負けです。。。またチャレンジしてみてね！"
        exit
      end
    else
      puts "もう一回！！"
      puts "-----------------------------"
      return true
    end
    
  end
end  
game = Gametask.new

next_game = true

while next_game
  next_game = game.rock_paper_scissors
end
