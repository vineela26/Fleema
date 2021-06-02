class Hinzufugen < ApplicationRecord
  self.table_name = "customers"
  validates :first_name,:presence => {:message => "Vorname can't be blank." }
  validates :last_name,:presence => {:message => "Nachname can't be blank." }
  validates :email,:presence => {:message => "E-Mail-Adresse can't be blank." },
            :uniqueness => {:message => "E-Mail-Adresse already exists."}

end
