class Dino
  attr_reader :name,
              :category,
              :period,
              :diet,
              :age,
              :health
  def initialize(data)
    @name     = data["name"]
    @category = data["category"]
    @period   = data["period"]
    @diet     = data["diet"]
    @age      = data["age"]
    @health   = (@age <= 0) ? 0 : set_health
  end
  def set_health
    herbivore? || carnivore? ? @health = (100 - @age) : @health = (100 - @age) / 2
  end
  def herbivore?
    @category == "herbivore" && @diet == "plants"
  end
  def carnivore?
    @category == "carnivore" && @diet == "meat"
  end
  def comment
    @health > 0 ? "Alive" : "Dead"
  end
  def age_metrics
    if @age > 1 && comment == "Alive"
      (@age / 2).to_f
    else
      0
    end
  end
end