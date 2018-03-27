class Player

  def initialize(gold_coins, health_points, lives)
    @gold_coins=gold_coins
    @health_points=health_points
    @lives=lives
  end

  def check()
   if @lives!=5
     p "Incorrect value, reseting lives to 5"
     @lives=5
   end


   if @gold_coins!=0
     p "Incorrect value, reseting gold coins to 0"
     @gold_coins=0
   end

   if @health_points!=10
     p "Incorrect vallue, reseting health_points to 10"
     @health_points=10
   end

  end

  def level_up()
      @lives=@lives+1
  end

  def collect_treasure()
    @gold_coins =@gold_coins+1
    if (@gold_coins % 10) ==0
      level_up
    end
  end

  def do_battle(damage)

    @health_points-= damage

    if @health_points<1
      @lives-=1
      @health_points=10
    end

    if @health_points<1
      restart
    end

  end


def restart ()
  initialize(10,0,5)
end

end


newplayer = Player.new(9, 10,50)
p newplayer

newplayer.check()

p newplayer.level_up

i=0
while i<10
  p newplayer.collect_treasure
  i+=1
end
p newplayer

p newplayer.do_battle(5)
