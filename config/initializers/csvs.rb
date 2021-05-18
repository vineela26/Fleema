require 'smarter_csv'

puts 'Loading CSVs...'
$car_equipment = SmarterCSV.process(Rails.root.join('app', 'csvs', 'car_equipment.csv'))
puts 'Loaded Equipment'
$car_generation = SmarterCSV.process(Rails.root.join('app', 'csvs', 'car_generation.csv'))
puts 'Loaded Generation'
$car_make = SmarterCSV.process(Rails.root.join('app', 'csvs', 'car_make.csv'))
puts 'Loaded Make'
$car_model = SmarterCSV.process(Rails.root.join('app', 'csvs', 'car_model.csv'))
puts 'Loaded Model'
$car_option_value = SmarterCSV.process(Rails.root.join('app', 'csvs', 'car_option_value.csv'))
puts 'Loaded Option Value'
$car_option = SmarterCSV.process(Rails.root.join('app', 'csvs', 'car_option.csv'))
puts 'Loaded Option'
$car_serie = SmarterCSV.process(Rails.root.join('app', 'csvs', 'car_serie.csv'))
puts 'Loaded Serie'
$car_specification_value = SmarterCSV.process(Rails.root.join('app', 'csvs', 'car_specification_value.csv'))
puts 'Loaded Specification Value'
$car_specification = SmarterCSV.process(Rails.root.join('app', 'csvs', 'car_specification.csv'))
puts 'Loaded Specification'
$car_trim = SmarterCSV.process(Rails.root.join('app', 'csvs', 'car_trim.csv'))
puts 'Loaded Trim'
$car_type = SmarterCSV.process(Rails.root.join('app', 'csvs', 'car_type.csv'))
puts 'Loaded Type'
puts 'done'
