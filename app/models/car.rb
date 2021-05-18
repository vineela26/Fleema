class Car < ApplicationRecord
  serialize :specifications, Array
  has_one_attached :photo

  def full_name
    "#{name} #{model}"
  end

  def transmission
    return '-' unless specifications.any?
    specifications.select{ |sp| sp.fetch(:key) == "'Getriebe'" }.first&.fetch(:value)&.gsub!("'", "") || '-'
  end

  def displacement
    return '-' unless specifications.any?
    specifications.select{ |sp| sp.fetch(:key) == "'Hubraum'" }.first&.fetch(:value)&.gsub!("'", "") || '-'
  end

  def fuel_combined
    return '-' unless specifications.any?
    specifications.select{ |sp| sp.fetch(:key) == "'Verbrauch Kombiniert auf 100 km'" }.first&.fetch(:value)&.gsub!("'", "") || '-'
  end

  def fuel_inside
    return '-' unless specifications.any?
    specifications.select{ |sp| sp.fetch(:key) == "'Verbrauch Stadt auf 100 km'" }.first&.fetch(:value)&.gsub!("'", "") || '-'
  end

  def fuel_outside
    return '-' unless specifications.any?
    specifications.select{ |sp| sp.fetch(:key) == "'Verbrauch Autobahn auf 100 km'" }.first&.fetch(:value)&.gsub!("'", "") || '-'
  end

  def gears
    return '-' unless specifications.any?
    specifications.select{ |sp| sp.fetch(:key) == "'Anzahl der Gänge'" }.first&.fetch(:value)&.gsub!("'", "") || '-'
  end

  def seats
    return '-' unless specifications.any?
    specifications.select{ |sp| sp.fetch(:key) == "'Sitzplätze'" }.first&.fetch(:value)&.gsub!("'", "") || '-'
  end
end
