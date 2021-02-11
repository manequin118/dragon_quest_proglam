#encoding: utf-8
class Monster < Character
  def attack(brave)
    damage2 = (offense - brave.defense) / 2
    brave.hp -= damage2
    brave.hp = 0 if brave.hp < 0
    if hp > 0
      puts "#{name}の攻撃！"
      puts "#{brave.name}は#{damage2}のダメージを受けた!"
    end
  end
end
