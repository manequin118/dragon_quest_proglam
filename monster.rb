#encoding: utf-8
class Monster < Character
  def attack(brave)
    damage2 = (offense - brave.defense) / 2
    brave.hp -= damage2
    brave.hp = 0 if brave.hp < 0
    puts <<~EOS
           #{name}の攻撃！
           #{brave.name}は#{damage2}のダメージを受けた!
         EOS
  end
end
