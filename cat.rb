class Cat

  def initialize(name, preferred_food, meal_time)
    @name=name
    @preferred_food=preferred_food
    @meal_time=meal_time
  end

  def eats_at()
    if @meal_time> 0 && @meal_time <11
      return "#{@meal_time} AM"
    elsif @meal_time==0
      return "12 AM"
    elsif @meal_time>11  && @meal_time <=23
      return "#{@meal_time-12} PM"
    end
  end

  def meow()
    "My name is #{@name} and I eat #{@preferred_food} at #{eats_at}"
  end


  end

gucciCat = Cat.new("behram", "pizza", 9)
nyanCat = Cat.new("nyan", "rainbow", 23)
p gucciCat
p nyanCat

p gucciCat.eats_at
p nyanCat.eats_at

p gucciCat.meow
p nyanCat.meow
