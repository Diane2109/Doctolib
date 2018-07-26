require 'faker'


20.times do |index| # Crée 20 patients random avec Faker
  patient = Patient.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
end

5.times do |index| # Crée 5 docteurs random avec Faker
  doctor = Doctor.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, specialty: "Généraliste", postal_code: Faker::Address.postcode)
end


30.times do |index| # Crée 30 rdv random avec Faker
  appointment = Appointment.create(date: Faker::Date.between(2.days.ago, Date.today), patient_id: rand(1..20), doctor_id: rand(1..5))
end
