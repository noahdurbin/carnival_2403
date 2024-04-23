class Carnival
  attr_reader :name,
              :duration,
              :rides

  def initialize(name, duration)
    @name = name
    @duration = duration
    @rides = []
  end

  def add_ride(ride)
    @rides << ride
  end

  def total_revenue
    @rides.sum do |ride| 
      ride.total_revenue 
    end
  end

  def most_popular_ride
    @rides.max_by do |ride|
      ride.total_revenue / ride.admission_fee
    end
  end
end