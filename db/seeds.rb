require 'faker'

15.times do |index| # Crée 20 patients random avec Faker
  city = City.create(city_name: Faker::Address.city)
end

20.times do |index| # Crée 20 patients random avec Faker
  patient = Patient.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, city_id: rand(1..15))
end

20.times do |index| # Crée 5 docteurs random avec Faker
  doctor = Doctor.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, postal_code: Faker::Address.postcode, city_id: rand(1..15))
end

5.times do |index| # Crée 5 docteurs random avec Faker
  specialty = Specialty.create(name_of_specialty: "Généraliste")
end

5.times do |index| # Crée 5 docteurs random avec Faker
  specialty = Specialty.create(name_of_specialty: "Chirurgien")
end

5.times do |index| # Crée 5 docteurs random avec Faker
  specialty = Specialty.create(name_of_specialty: "Dermatologue")
end

30.times do |index| # Crée 30 rdv random avec Faker
  appointment = Appointment.create(date: Faker::Date.between(2.days.ago, Date.today), patient_id: rand(1..20), doctor_id: rand(1..5), city_id: rand(1..15))
end

50.times do |index| # Crée 30 parts random avec Faker
  doctors_specialties = DoctorsSpecialty.create(doctor_id: rand(1..20), specialty_id: rand(1..15))
end
