# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# races: description/name/place/distance//date/price/officiel_event_url/picture_race/trail_map_url/trail_map_picture/level/status
User.destroy_all
Race.destroy_all
Sport.destroy_all
RaceSports.destroy_all
RaceGroup.destroy_all
UserSports.destroy_all
UserRaces.destroy_all
GroupMembership.destroy_all

# /////////////////////////////////////////////////////////////////////////////////////////////
# ////////////////////////////////////////////////////////////////////////////////////////////
# ///////////////////////////////////////////////////////////////////////////////////////////

# users nom/first_name/photoprofil/fb_id/email/certifmedic/certificate_date/level/address

level = ["débutant", "intermédiaire", "expert"]

momo = User.create!(
  first_name: "momo",
  last_name: "Batman",
  address: "Angers",
  facebook_id: Faker::Omniauth.facebook,
  email: "momo@gmail.com",
  password: "123456",
  password_confirmation: "123456",
  medical_certifate_date: Date.new(2018,4,30),
  medical_certifate:"photo",
  profile_picture:"photo",
  level: level.sample,
  )

john = User.create!(
  first_name: "john",
  last_name: "Mckaine",
  address: "Dallas",
  facebook_id: Faker::Omniauth.facebook,
  email: "john@gmail.com",
  password: "123456",
  password_confirmation: "123456",
  medical_certifate_date: Date.new(2018,4,30),
  medical_certifate:"photo",
  profile_picture:"photo",
  level: level.sample,
  )

lee = User.create!(
  first_name: "Lee",
  last_name: "Sue",
  address: "Paris",
  facebook_id: Faker::Omniauth.facebook,
  email: "lee@gmail.com",
  password: "123456",
  password_confirmation: "123456",
  medical_certifate_date: Date.new(2018,4,30),
  medical_certifate:"photo",
  profile_picture:"photo",
  level: level.sample,
  )

chuck = User.create!(
  first_name: "chuck",
  last_name: "Norris",
  address: "Houston",
  facebook_id: Faker::Omniauth.facebook,
  email: "chuck@gmail.com",
  password: "123456",
  password_confirmation: "123456",
  medical_certifate_date: Date.new(2018,4,30),
  medical_certifate:"photo",
  profile_picture:"photo",
  level: level.sample,
  )

larry = User.create!(
  first_name: "larry",
  last_name: "Bird",
  address: "NY",
  facebook_id: Faker::Omniauth.facebook,
  email: "larry@gmail.com",
  password: "123456",
  password_confirmation: "123456",
  medical_certifate_date: Date.new(2018,4,30),
  medical_certifate:"photo",
  profile_picture:"photo",
  level: level.sample,
  )

charles = User.create!(
  first_name: "charles",
  last_name: "Lacoche",
  address: "Paris",
  facebook_id: Faker::Omniauth.facebook,
  email: "charles@gmail.com",
  password: "123456",
  password_confirmation: "123456",
  medical_certifate_date: Date.new(2018,4,30),
  medical_certifate:"photo",
  profile_picture:"photo",
  level: level.sample,
  )

tony = User.create!(
  first_name: "tony",
  last_name: "Parker",
  address: "lyon",
  facebook_id: Faker::Omniauth.facebook,
  email: "tony@gmail.com",
  password: "123456",
  password_confirmation: "123456",
  medical_certifate_date: Date.new(2018,4,30),
  medical_certifate:"photo",
  profile_picture:"photo",
  level: level.sample,
  )

kylian = User.create!(
  first_name: "kylian",
  last_name: "Mbappé",
  address: "Monaco",
  facebook_id: Faker::Omniauth.facebook,
  email: "kylian@gmail.com",
  password: "123456",
  password_confirmation: "123456",
  medical_certifate_date: Date.new(2018,4,30),
  medical_certifate:"photo",
  profile_picture:"photo",
  level: level.sample,
  )

lebron = User.create!(
  first_name: "lebron",
  last_name: "James",
  address: "Cleveland",
  facebook_id: Faker::Omniauth.facebook,
  email: "lebron@gmail.com",
  password: "123456",
  password_confirmation: "123456",
  medical_certifate_date: Date.new(2018,4,30),
  medical_certifate:"photo",
  profile_picture:"photo",
  level: level.sample,
  )

michael = User.create!(
  first_name: "michael",
  last_name: "Batman",
  address: "Chicago",
  facebook_id: Faker::Omniauth.facebook,
  email: "michael@gmail.com",
  password: "123456",
  password_confirmation: "123456",
  medical_certifate_date: Date.new(2018,4,30),
  medical_certifate:"photo",
  profile_picture:"photo",
  level: level.sample,
  )

david = User.create!(
  first_name: "david",
  last_name: "Trezeguooool",
  address: "Buesnos Aires",
  facebook_id: Faker::Omniauth.facebook,
  email: "david@gmail.com",
  password: "123456",
  password_confirmation: "123456",
  medical_certifate_date: Date.new(2018,4,30),
  medical_certifate:"photo",
  profile_picture:"photo",
  level: level.sample,
  )

jody = User.create!(
  first_name: "jody",
  last_name: "Vanden",
  address: "Melburn",
  facebook_id: Faker::Omniauth.facebook,
  email: "laurent@gmail.com",
  password: "123456",
  password_confirmation: "123456",
  medical_certifate_date: Date.new(2018,4,30),
  medical_certifate:"photo",
  profile_picture:"photo",
  level: level.sample,
  )

# /////////////////////////////////////////////////////////////////////////////////////////////
# ////////////////////////////////////////////////////////////////////////////////////////////
# ///////////////////////////////////////////////////////////////////////////////////////////

# races: description/name/place/distance/date/price/officiel_event_link/picture_race/trail_map_url/trail_map_picture/level/status

level = ["débutant", "intermédiaire", "expert"]
status = ["exist", "open", "closed"]
sport = ["swimming", "running", "cycling", "triathlon", "swimrun" ]
index = 1

quiberon_triathlons = Race.create! (
  name: "Triathlons de Quiberon",
  description:"Triathlons | Olympic | Sprint | Kids | Relay | Swim: 1.5 km, Bike: 40 km, Run: 10 km",
  place: "Quiberon",
  total_distance: 52,
  date: Date.new(2017,9,2),
  price: 30,
  officiel_event_url: "http://quiberontriathlon.fr/?page_id=2",
  trail_map_url: "http://quiberontriathlon.fr/wp-content/uploads/2017/02/EPREUVE-M-2017.pdf",
  trail_map_picture: File.new(Rails.root.join("db/fixtures/race_map/map#{index}.jpg")),
  level: level.sample,
  status: status.sample,
  picture: File.new(Rails.root.join("db/fixtures/images/triathlon1.jpg")),
)

index += 1
lorient_triathlons = Race.create!(
  name: "Triathlons de Lorient",
  description:"Triathlons | Olympic | Sprint | Kids | Relay | Swim: 1.5, Bike: 40, Run: 10",
  place: "Lorient",
  total_distance: 52,
  date: Date.new(2017,8,28),
  price: 25,
  officiel_event_url: "http://triduter.lorienttriathlon.fr/",
  trail_map_url: "http://triduter.lorienttriathlon.fr/2016/06/15/s-sprint/",
  trail_map_picture: File.new(Rails.root.join("db/fixtures/race_map/map#{index}.jpg")),
  level: level.sample,
  status: status.sample,
  picture: File.new(Rails.root.join("db/fixtures/images/#{index}.jpg")),
)

index += 1
anjou_m = Race.create!(
  name: "Anjou_Swimrun",
  description:"Swimrun swim: 4,623, run: 21,747",
  place: "Angers",
  total_distance: 26,
  date: Date.new(2018,4,23),
  price: 130,
  officiel_event_url: "http://angersswimrun.onlinetri.com/",
  trail_map_url: "",
  trail_map_picture: File.new(Rails.root.join("db/fixtures/race_map/map#{index}.jpg")),
  level: level.sample,
  status: status.sample,
  picture: File.new(Rails.root.join("db/fixtures/images/#{index}.jpg")),
)

index += 1
anjou_s = Race.create!(
  name: "Anjou_Swimrun",
  description:"Swimrun swim: 2,446, run: 13,184",
  place: "Angers",
  total_distance: 16,
  date: Date.new(2017,4,23),
  price: 65,
  officiel_event_url: "http://angersswimrun.onlinetri.com/",
  trail_map_url: "",
  trail_map_picture: File.new(Rails.root.join("db/fixtures/race_map/map#{index}.jpg")),
  level: level.sample,
  status: status.sample,
  picture: File.new(Rails.root.join("db/fixtures/images/#{index}.jpg")),
)

index += 1
 breizh_start = Race.create!(
  name: "Breizh_Start",
  description:"Swimrun swim: 4, run: 14",
  place: "Fouesnant",
  date: Date.new(2017,5,15),
  price: 120,
  official_event_url: "http://www.colorsport-event.com/evenements/breizh-swimrun/",
  trail_map_url: "http://www.colorsport-event.com/evenements/breizh-swimrun/",
  trail_map_picture: File.new(Rails.root.join("db/fixtures/race_map/map4.jpg")),
  level: level.sample,
  status: status.sample,
  picture: File.new(Rails.root.join("db/fixtures/images/swim_race2.jpg")) ,
)


breizh_start = Race.create!(
  name: "Breizh_Start",
  description:"Swimrun swim: 4, run: 14",
  place: "Fouesnant",
  date: Date.new(2017,5,15),
  price: 120,
  official_event_url: "http://www.colorsport-event.com/evenements/breizh-swimrun/",
  trail_map_url: "http://www.colorsport-event.com/evenements/breizh-swimrun/",
  trail_map_picture: File.new(Rails.root.join("db/fixtures/race_map/map4.jpg")),
  level: "intermédiaire",
  status: "open",
  picture: File.new(Rails.root.join("db/fixtures/images/swim_race2.jpg")) ,
)
index += 1
marathon_de_la_loire = Race.create!(
  name: "Marathon_de_la_Loire",
  description:"Marathon",
  place: "Saumur",
  total_distance: 42,
  date: Date.new(2017,4,16),
  price: 70,
  officiel_event_url: "http://www.marathon-loire.fr/",
  trail_map_url: "http://tracedetrail.fr/fr/trace/trace/27657",
  trail_map_picture: File.new(Rails.root.join("db/fixtures/race_map/map#{index}.jpg")),
  level: level.sample,
  status: status.sample,
  picture: File.new(Rails.root.join("db/fixtures/images/#{index}.jpg")),
)

index += 1
marathon_de_nantes = Race.create!(
  name: "Marathon_de_Nantes",
  description:"",
  place: "Lorient",
  total_distance: 42,
  date: Date.new(2017,4,30),
  price: 58,
  officiel_event_url: "http://www.marathondenantes.com/",
  trail_map_url: "http://www.marathondenantes.com/wp-content/uploads/2015/11/Parcours-Marathon-2016.jpg",
  trail_map_picture: File.new(Rails.root.join("db/fixtures/race_map/map#{index}.jpg")),
  level: level.sample,
  status: status.sample,
  picture: File.new(Rails.root.join("db/fixtures/images/#{index}.jpg"))
)

# /////////////////////////////////////////////////////////////////////////////////////////////
# ////////////////////////////////////////////////////////////////////////////////////////////
# ///////////////////////////////////////////////////////////////////////////////////////////

# sports: name

swimming = Sport.create!(name: "swimming")
running = Sport.create!(name: "course à pied")
cycling = Sport.create!(name: "cycling")
# triathlon = Sport.create!(name: "triathlon")
# swimrun = Sport.create!(name: "swimrun")


# /////////////////////////////////////////////////////////////////////////////////////////////
# ////////////////////////////////////////////////////////////////////////////////////////////
# ///////////////////////////////////////////////////////////////////////////////////////////

# user_sport: sport_id/user_id/

# momo
UserSport.create!(
  user: momo,
  sport: cycling
)

UserSport.create!(
  user: momo,
  sport: running
)

UserSport.create!(
  user: momo,
  sport: swimming
)

# lee
UserSport.create!(
  user: lee,
  sport: cycling
)

UserSport.create!(
  user: lee,
  sport: running
)

UserSport.create!(
  user: lee,
  sport: swimming
)

# larry
UserSport.create!(
  user: larry,
  sport: cycling
)

UserSport.create!(
  user: larry,
  sport: running
)

UserSport.create!(
  user: larry,
  sport: swimming
)

# charles
UserSport.create!(
  user: charles,
  sport: cycling
)

UserSport.create!(
  user: charles,
  sport: running
)

UserSport.create!(
  user: charles,
  sport: swimming
)

# tony
UserSport.create!(
  user: tony,
  sport: cycling
)

UserSport.create!(
  user: tony,
  sport: running
)

UserSport.create!(
  user: tony,
  sport: swimming
)

# chuck
UserSport.create!(
  user: chuck,
  sport: cycling
)

UserSport.create!(
  user: chuck,
  sport: running
)

UserSport.create!(
  user: chuck,
  sport: swimming
)

# kylian
UserSport.create!(
  user: kylian,
  sport: cycling
)

UserSport.create!(
  user: kylian,
  sport: running
)

UserSport.create!(
  user: kylian,
  sport: swimming
)

# lebron
UserSport.create!(
  user: lebron,
  sport: cycling
)

UserSport.create!(
  user: lebron,
  sport: running
)

UserSport.create!(
  user: lebron,
  sport: swimming
)

# michael
UserSport.create!(
  user: michael,
  sport: cycling
)

UserSport.create!(
  user: michael,
  sport: running
)

UserSport.create!(
  user: michael,
  sport: swimming
)

# david
UserSport.create!(
  user: david,
  sport: cycling
)

UserSport.create!(
  user: david,
  sport: running
)

UserSport.create!(
  user: david,
  sport: swimming
)

# jody
UserSport.create!(
  user: jody,
  sport: cycling
)

UserSport.create!(
  user: jody,
  sport: running
)

UserSport.create!(
  user: jody,
  sport: swimming
)

# /////////////////////////////////////////////////////////////////////////////////////////////
# ////////////////////////////////////////////////////////////////////////////////////////////
# ///////////////////////////////////////////////////////////////////////////////////////////

# race_sports: sport_id/race_id/ distance
# marathon de nantes
RaceSport.create!(
  race: marathon_de_nantes,
  sport: running,
  distance: 42
)

marathon_de_nantes.calculate_total_distance
marathon_de_nantes.save

# marathon de la loire
RaceSport.create!(
  race: marathon_de_la_loire,
  sport: running,
  distance: 42
)

# breizh start
RaceSport.create!(
  race: breizh_start,
  sport: running,
  distance: 14
)

RaceSport.create!(
  race: breizh_start,
  sport: swimming,
  distance: 4
)

# Anjou M
RaceSport.create!(
  race: anjou_m,
  sport: running,
  distance: 21
)

RaceSport.create!(
  race: anjou_m,
  sport: swimming;
  distance: 4.6
)


# Anjou S
RaceSport.create!(
  race: anjou_s,
  sport: running,
  distance: 13
)

RaceSport.create!(
  race: anjou_s,
  sport: swimming,
  distance: 2.4
)

# /////////////////////////////////////////////////////////////////////////////////////////////
# ////////////////////////////////////////////////////////////////////////////////////////////
# ///////////////////////////////////////////////////////////////////////////////////////////

# race_groups: user_id/race_id/status/token

champions_mon_frere = RaceGroup.create!(
  user: momo,
  race: marathon_de_nantes,
  token: SecureRandom.hex(8) #numero unique aléatoire
  )

les_lorientais = RaceGroup.create!(
  user: charles,
  race: lorient_triathlons,
  token: SecureRandom.hex(8) #numero unique aléatoire
  )

les_nantais = RaceGroup.create!(
  user: jody,
  race: anjou_m,
  token: SecureRandom.hex(8) #numero unique aléatoire
  )

les_ricains = RaceGroup.create!(
  user: tony,
  race: breizh_start,
  token: SecureRandom.hex(8) #numero unique aléatoire
  )

les_potos = RaceGroup.create!(
  user: kylian,
  race: quiberon_triathlons,
  token: SecureRandom.hex(8) #numero unique aléatoire
  )

les_invincibles = RaceGroup.create!(
  user: lebron,
  race: marathon_de_la_loire,
  token: SecureRandom.hex(8) #numero unique aléatoire
  )

rouge = RaceGroup.create!(
  user: momo,
  race: anjou_s,
  token: SecureRandom.hex(8) #numero unique aléatoire
  )

# /////////////////////////////////////////////////////////////////////////////////////////////
# ////////////////////////////////////////////////////////////////////////////////////////////
# ///////////////////////////////////////////////////////////////////////////////////////////

# group_memberships: user_id/user_race_id/status

status_group_memberships = ["inscrit", "interessé", "pas interessé", "non répondu"]

# 1er groupe: champions_mon_frere

GroupMembership.create!(
  user: momo,
  race_group: champions_mon_frere,
  status_group_memberships: "inscrit"
)
GroupMembership.create!(
  user: larry,
  race_group: champions_mon_frere,
  status_group_memberships: status_group_memberships.sample
)


# 2eme groupe: les_lorientais
GroupMembership.create!(
  user: charles,
  race_group: les_lorientais,
  status_group_memberships: "inscrit"
)
GroupMembership.create!(
  user: chuck,
  race_group: les_lorientais,
  status_group_memberships: status_group_memberships.sample
)
GroupMembership.create!(
  user: john,
  race_group: les_lorientais,
  status_group_memberships: status_group_memberships.sample
)
GroupMembership.create!(
  user: tony,
  race_group: les_lorientais,
  status_group_memberships: status_group_memberships.sample
)

# 3eme groupe: les_nantais
GroupMembership.create!(
  user: jody,
  race_group: les_nantais,
  status_group_memberships: "inscrit"
)
GroupMembership.create!(
  user: momo,
  race_group: les_nantais,
  status_group_memberships: "inscrit"
)
GroupMembership.create!(
  user: momo,
  race_group: les_nantais,
  status_group_memberships: status_group_memberships.sample
)

# 4ème groupe: les_ricains
GroupMembership.create!(
  user: tony,
  race_group: les_ricains,
  status_group_memberships: "inscrit"
)
GroupMembership.create!(
  user: john,
  race_group: les_ricains,
  status_group_memberships: status_group_memberships.sample
)
GroupMembership.create!(
  user: larry,
  race_group: les_ricains,
  status_group_memberships: status_group_memberships.sample
)
GroupMembership.create!(
  user: lebron,
  race_group: les_ricains,
  status_group_memberships: status_group_memberships.sample
)

# 5ème groupe: les_potos
GroupMembership.create!(
  user: kylian,
  race_group: les_potos,
  status_group_memberships: "inscrit"
)
GroupMembership.create!(
  user: momo,
  race_group: les_potos,
  status_group_memberships: status_group_memberships.sample
)
GroupMembership.create!(
  user: charles,
  race_group: les_potos,
  status_group_memberships: status_group_memberships.sample
)

# 6ème groupe: les_invincibles
GroupMembership.create!(
  user: lebron,
  race_group: les_invincibles,
  status_group_memberships: status_group_memberships.sample
)

GroupMembership.create!(
  user: chuck,
  race_group: les_invincibles,
  status_group_memberships: status_group_memberships.sample
)

GroupMembership.create!(
  user: larry,
  race_group: les_invincibles,
  status_group_memberships: status_group_memberships.sample
)

# 7ème groupe: rouge
GroupMembership.create!(
  user: momo,
  race_group: rouge,
  status_group_memberships: status_group_memberships.sample
)

GroupMembership.create!(
  user: jody,
  race_group: rouge,
  status_group_memberships: status_group_memberships.sample
)
