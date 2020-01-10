# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Candidat.destroy_all
Comment.destroy_all
Promess.destroy_all
Engagment.destroy_all
Region.destroy_all
Commune.destroy_all
Daty.destroy_all
Survey.destroy_all

reg = ["Diana", "Sava", "Itasy", "Analamanga", "Vakinankaratra", "Bongolava", "Sofia", "Boeny",
		"Betsiboka", "Melaky", "Alaotra-Mangoro", "Atsinanana", "Analanjirofo", "Amoron'i Mania",
		"Haute Matsiatra", "Vatovavy-Fitovinany", "Atsimo-Atsinanana", "Ihorombe", "Menabe",
		"Atsimo-Andrefana", "Androy", "Anosy"]
		
com =["ivato", "analamanga", "talatamaty"]

reg.length.times do |i|
    Region.create(name: reg[i])
end

com.length.times do |i|
    Commune.create(name: com[i], region_id: (Region.first.id))
end

# 10.times do |i|
#     User.create(full_name: Faker::Name.name, age: rand(18..77), adress: Faker::Address.street_address, email: Faker::Internet.email, password: "azertyop")
# end

5.times do |i|
    Candidat.create(name: Faker::FunnyName.name, parti: Faker::Kpop.boy_bands, resultat: 10, commune_id: rand(Commune.first.id .. Commune.last.id), region_id: (Region.first.id))
end

5.times do |i|
    Promess.create(content: Faker::Kpop.boy_bands, candidat_id: rand(Candidat.first.id .. Candidat.last.id))
end

puts "vita"