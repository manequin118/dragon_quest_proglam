#encoding: utf-8
require "./character"
require "./brave"
require "./monster"

brave = Brave.new(name: "ゆうしゃ", hp: 238, offense: 203, defense: 129)
monster = Monster.new(name: "アークデーモン", hp: 210, offense: 140, defense: 80)

puts "#{monster.name}が現れた！"

loop do
  brave.attack(monster)
  monster.attack(brave)
  puts "=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*="
  puts "【#{brave.name}】HP :#{brave.hp}"
  puts "【#{monster.name}】HP :#{monster.hp}"
  puts "=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*="
  if monster.hp <= 0 || brave.hp <= 0
    break
  end
end
if monster.hp <= 0
  puts "#{monster.name}をやっつけた！"
else
  puts "#{brave.name}はしんだ！"
end
