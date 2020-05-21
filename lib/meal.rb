class Meal

  attr_accessor :waiter, :customer, :total, :tip

  @@all = []

  def initialize(waiter, customer, total, tip=0)
    @waiter = waiter
    @customer = customer
    @total = total
    @tip = tip
    @@all << self
  end
  jason = Waiter.new("Jason", 4)
  lisa = Customer.new("Lisa", 24)
  tim = Customer.new("Tim", 35)
  terrance = Customer.new("Terrance", 27)

  terrance.new_meal(jason, 50, 3)
  lisa.new_meal(jason, 40, 10)
  tim.new_meal(jason, 45, 8)

  jason.best_tipper => <Customer:0x00007f80829959a8 @name="Lisa", @age=24>
  jason.best_tipper.name => "Lisa"

  def self.all
    @@all
  end
end
