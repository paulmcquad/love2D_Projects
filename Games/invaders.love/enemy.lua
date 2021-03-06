enemy = {}
enemies_controller = {}
enemies_controller.enemies = {}
enemies_controller.image = love.graphics.newImage('enemy.png')

function enemies_controller:spawnEnemy(x, y)
    enemy = {}
    enemy.x = x
    enemy.y = y
    enemy.width = 10
    enemy.height = 10
    enemy.bullets = {}
    enemy.cooldown = 20
    enemy.speed = .1
    table.insert(self.enemies, enemy)
end

function enemy:fire()
  if self.cooldown <= 0 then
    self.cooldown = 20
    bullet = {}
    bullet.x = self.x + 35
    bullet.y = self.y
    table.insert(self.bullets, bullet)
  end
end

function enemy:spawnEnemy()
  for i=0, 10 do
    enemies_controller:spawnEnemy(i * 15,0)
  end
end

--function enemy:draw()
--      love.graphics.setColor(255, 255, 255)
--     for _,e in pairs(enemies_controller.enemies) do
--         love.graphics.draw(enemies_controller.image, e.x, e.y)
--     end
--end


return enemy
