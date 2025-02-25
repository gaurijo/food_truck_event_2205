class Event
  attr_reader :name,
              :food_trucks
  def initialize(name)
    @name = name
    @food_trucks = []
  end

  def add_food_truck(truck)

    @food_trucks << truck

  end

  def food_truck_names
    @food_trucks.map do |food_truck|
      food_truck.name
    end
  end

  def food_trucks_that_sell(item)
    @food_trucks.find_all do |food_truck|
      food_truck.check_stock(@item1).include?(item)
    end
  end

  # def potential_revenue
  #   @food_trucks.map do |food_truck|
  #     food_truck.stock
  #   end
  # end

end
