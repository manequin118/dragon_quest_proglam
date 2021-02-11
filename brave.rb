#encoding: utf-8
class Brave < Character
  def attack(monster)
    damage1 = (offense - monster.defense) / 2
    monster.hp -= damage1
    monster.hp = 0 if monster.hp < 0
    if monster.hp >= 0
      puts "#{name}の攻撃！"
      puts "#{monster.name}に#{damage1}のダメージを与えた!"
    end
  end
end
