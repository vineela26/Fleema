class Car < ApplicationRecord
  serialize :specifications, Array

  def full_name
    "#{name} #{model} - #{car_model_name}"
  end

  def transmission
    return '-' unless specifications.any?
    specifications.select{ |sp| sp.fetch(:key) == 'Getriebe' }.first.fetch(:value)
  end

  def displacement
    return '-' unless specifications.any?
    specifications.select{ |sp| sp.fetch(:key) == 'Hubraum' }.first.fetch(:value)
  end

  def fuel_combined
    return '-' unless specifications.any?
    specifications.select{ |sp| sp.fetch(:key) == 'Verbrauch Kombiniert auf 100 km' }.first.fetch(:value)    
  end

  def fuel_inside
    return '-' unless specifications.any?
    specifications.select{ |sp| sp.fetch(:key) == 'Verbrauch Stadt auf 100 km' }.first.fetch(:value)
  end

  def fuel_outside
    return '-' unless specifications.any?
    specifications.select{ |sp| sp.fetch(:key) == 'Verbrauch Autobahn auf 100 km' }.first.fetch(:value)
  end

  def gears
    return '-' unless specifications.any?
    specifications.select{ |sp| sp.fetch(:key) == 'Anzahl der Gänge' }.first.fetch(:value)
  end

  def seats
    return '-' unless specifications.any?
    specifications.select{ |sp| sp.fetch(:key) == 'Sitzplätze' }.first.fetch(:value)
  end
end
