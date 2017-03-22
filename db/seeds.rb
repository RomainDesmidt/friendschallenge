# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# races: description/name/place/distance//date/price/officiel_event_link/picture_race/trail_map_url/trail_map_picture/level/status
User.destroy_all
Race.destroy_all
Sport.destroy_all
Race_Sport.destroy_all
Shared_Races.destroy_all
User_Sports.destroy_all
User_Races.destroy_all

# users nom/first_name/photoprofil/fb_id/email/certifmedic/certificate_date/level/address
level = ["débutant", "intermédiaire", "expert"]

momo = User.create!(
  first_name: "momo",
  last_name: "Batman",
  address: "Angers",
  facebook_id: ,
  email: "momo@gmail.com",
  password: "123456",
  password_confirmation: "123456"
  medical_certifate_date: Date.new(2018,4,30),
  medical_certifate:"photo",
  profile_picture:"photo",
  level: level.sample,
  )

john = User.create!(
  first_name: "john",
  last_name: "Mckaine",
  address: "Dallas",
  facebook_id: ,
  email: "john@gmail.com",
  password: "123456",
  password_confirmation: "123456"
  medical_certifate_date: Date.new(2018,4,30),
  medical_certifate:"photo",
  profile_picture:"photo",
  level: level.sample,
  )

lee = User.create!(
  first_name: "Lee",
  last_name: "Sue",
  address: "Paris",
  facebook_id: ,
  email: "lee@gmail.com",
  password: "123456",
  password_confirmation: "123456"
  medical_certifate_date: Date.new(2018,4,30),
  medical_certifate:"photo",
  profile_picture:"photo",
  level: level.sample,
  )

chuck = User.create!(
  first_name: "chuck",
  last_name: "Norris",
  address: "Houston",
  facebook_id: ,
  email: "chuck@gmail.com",
  password: "123456",
  password_confirmation: "123456"
  medical_certifate_date: Date.new(2018,4,30),
  medical_certifate:"photo",
  profile_picture:"photo",
  level: level.sample,
  )

larry = User.create!(
  first_name: "larry",
  last_name: "Bird",
  address: "NY",
  facebook_id: ,
  email: "larry@gmail.com",
  password: "123456",
  password_confirmation: "123456"
  medical_certifate_date: Date.new(2018,4,30),
  medical_certifate:"photo",
  profile_picture:"photo",
  level: level.sample,
  )

charles = User.create!(
  first_name: "charles",
  last_name: "Lacoche",
  address: "Paris",
  facebook_id: ,
  email: "charles@gmail.com",
  password: "123456",
  password_confirmation: "123456"
  medical_certifate_date: Date.new(2018,4,30),
  medical_certifate:"photo",
  profile_picture:"photo",
  level: level.sample,
  )

tony = User.create!(
  first_name: "tony",
  last_name: "Parker",
  address: "lyon",
  facebook_id: ,
  email: "tony@gmail.com",
  password: "123456",
  password_confirmation: "123456"
  medical_certifate_date: Date.new(2018,4,30),
  medical_certifate:"photo",
  profile_picture:"photo",
  level: level.sample,
  )

kylian = User.create!(
  first_name: "kylian",
  last_name: "Mbappé",
  address: "Monaco",
  facebook_id: ,
  email: "kylian@gmail.com",
  password: "123456",
  password_confirmation: "123456"
  medical_certifate_date: Date.new(2018,4,30),
  medical_certifate:"photo",
  profile_picture:"photo",
  level: level.sample,
  )

lebron = User.create!(
  first_name: "lebron",
  last_name: "James",
  address: "Cleveland",
  facebook_id: ,
  email: "lebron@gmail.com",
  password: "123456",
  password_confirmation: "123456"
  medical_certifate_date: Date.new(2018,4,30),
  medical_certifate:"photo",
  profile_picture:"photo",
  level: level.sample,
  )

michael = User.create!(
  first_name: "michael",
  last_name: "Batman",
  address: "Chicago",
  facebook_id: ,
  email: "michael@gmail.com",
  password: "123456",
  password_confirmation: "123456"
  medical_certifate_date: Date.new(2018,4,30),
  medical_certifate:"photo",
  profile_picture:"photo",
  level: level.sample,
  )

david = User.create!(
  first_name: "david",
  last_name: "Trezeguooool",
  address: "Buesnos Aires",
  facebook_id: ,
  email: "david@gmail.com",
  password: "123456",
  password_confirmation: "123456"
  medical_certifate_date: Date.new(2018,4,30),
  medical_certifate:"photo",
  profile_picture:"photo",
  level: level.sample,
  )

jody = User.create!(
  first_name: "jody",
  last_name: "Vanden",
  address: "Melburn",
  facebook_id: ,
  email: "laurent@gmail.com",
  password: "123456",
  password_confirmation: "123456"
  medical_certifate_date: Date.new(2018,4,30),
  medical_certifate:"photo",
  profile_picture:"photo",
  level: level.sample,
  )


# races: description/name/place/distance/date/price/officiel_event_link/picture_race/trail_map_url/trail_map_picture/level/status

level = ["débutant", "intermédiaire", "expert"]
status_race = ["exist", "open", "closed"]
sport = ["natation", "course à pied", "cyclisme", "triathlon", "swimrun" ]

quiberon_triathlons = Race.create! (
  name: "Triathlons de Quiberon",
  description:"Triathlons | Olympic | Sprint | Kids | Relay | Swim: 1.5 km, Bike: 40 km, Run: 10 km",
  place: "Quiberon",
  Total_distance: 52,
  date: Date.new(2017,9,2),
  price: 30,
  officiel_event_link: "http://quiberontriathlon.fr/?page_id=2",
  trail_map_url: "http://quiberontriathlon.fr/wp-content/uploads/2017/02/EPREUVE-M-2017.pdf",
  trail_map_picture: File.new(Rails.root.join("db/fixtures/race_map/#{index}.jpg")),
  level: level.sample,
  status_race: status_race.sample,
  picture: File.new(Rails.root.join("db/fixtures/images/#{index}.jpg")),
)

lorient_triathlons = Race.create!(
  name: "Triathlons de Lorient",
  description:"Triathlons | Olympic | Sprint | Kids | Relay | Swim: 1.5, Bike: 40, Run: 10",
  place: "Lorient",
  Total_distance: 52,
  date: Date.new(2017,8,28),
  price: 25,
  officiel_event_link: "http://triduter.lorienttriathlon.fr/",
  trail_map_url: "http://triduter.lorienttriathlon.fr/2016/06/15/s-sprint/",
  trail_map_picture: File.new(Rails.root.join("db/fixtures/race_map/#{index}.jpg")),
  level: level.sample,
  status_race: status_race.sample,
  picture: File.new(Rails.root.join("db/fixtures/images/#{index}.jpg")),
)

anjou_m = Race.create!(
  name: "Anjou_Swimrun",
  description:"Swimrun swim: 4,623, run: 21,747",
  place: "Angers",
  Total_distance: 26,
  date: Date.new(2018,4,23),
  price: 130,
  officiel_event_link: "http://angersswimrun.onlinetri.com/",
  trail_map_url: "",
  trail_map_picture: File.new(Rails.root.join("db/fixtures/race_map/#{index}.jpg")),
  level: level.sample,
  status_race: status_race.sample,
  picture: File.new(Rails.root.join("db/fixtures/images/#{index}.jpg")),
)

anjou_s = Race.create!(
  name: "Anjou_Swimrun",
  description:"Swimrun swim: 2,446, run: 13,184",
  place: "Angers",
  Total_distance: 16,
  date: Date.new(2017,4,23),
  price: 65,
  officiel_event_link: "http://angersswimrun.onlinetri.com/",
  trail_map_url: "",
  trail_map_picture: File.new(Rails.root.join("db/fixtures/race_map/#{index}.jpg")),
  level: level.sample,
  status_race: status_race.sample,
  picture: File.new(Rails.root.join("db/fixtures/images/#{index}.jpg")),
)

 breizh_start = Race.create!(
  name: "Breizh_Start",
  description:"Swimrun swim: 4, run: 14",
  place: "Fouesnant",
  Total_distance: 18,
  date: Date.new(2017,5,15),
  price: 120,
  officiel_event_link: "http://www.colorsport-event.com/evenements/breizh-swimrun/",
  trail_map_url: "http://www.colorsport-event.com/evenements/breizh-swimrun/",
  trail_map_picture: File.new(Rails.root.join("db/fixtures/race_map/#{index}.jpg")),
  level: level.sample,
  status_race: status_race.sample,
  picture: File.new(Rails.root.join("db/fixtures/images/#{index}.jpg")) ,
)

marathon_de_la_loire = Race.create!(
  name: "Marathon_de_la_Loire",
  description:"Marathon",
  place: "Saumur",
  Total_distance: 42,
  date: Date.new(2017,4,16),
  price: 70,
  officiel_event_link: "http://www.marathon-loire.fr/",
  trail_map_url: "http://tracedetrail.fr/fr/trace/trace/27657",
  trail_map_picture: File.new(Rails.root.join("db/fixtures/race_map/#{index}.jpg")),
  level: level.sample,
  status_race: status_race.sample,
  picture: File.new(Rails.root.join("db/fixtures/images/#{index}.jpg")),
)

marathon_de_nantes = Race.create!(
  name: "Marathon_de_Nantes",
  description:"",
  place: "Lorient",
  Total_distance: 42,
  date: Date.new(2017,4,30),
  price: 58,
  officiel_event_link: "http://www.marathondenantes.com/",
  trail_map_url: "http://www.marathondenantes.com/wp-content/uploads/2015/11/Parcours-Marathon-2016.jpg",
  trail_map_picture: File.new(Rails.root.join("db/fixtures/race_map/#{index}.jpg")),
  level: level.sample,
  status_race: status_race.sample,
  picture: File.new(Rails.root.join("db/fixtures/images/#{index}.jpg"))
)


# sports: name
natation = Sport.create!(name: "natation")
course_a_pied = Sport.create!(name: "course à pied")
cyclisme = Sport.create!(name: "cyclisme")
triathlon = Sport.create!(name: "triathlon")
swimrun = Sport.create!(name: "swimrun")



# user_sport: sport_id/user_id/

# momo
UserSport.create!(
  user: momo,
  sport: cyclisme
)

UserSport.create!(
  user: momo,
  sport: thriathlon
)

UserSport.create!(
  user: momo,
  sport: course_a_pied
)

UserSport.create!(
  user: momo,
  sport: natation
)

UserSport.create!(
  user: momo,
  sport: swimrun
)

# lee
UserSport.create!(
  user: lee,
  sport: cyclisme
)

UserSport.create!(
  user: lee,
  sport: thriathlon
)

UserSport.create!(
  user: lee,
  sport: course_a_pied
)

UserSport.create!(
  user: lee,
  sport: natation
)

UserSport.create!(
  user: lee,
  sport: swimrun
)

# larry
UserSport.create!(
  user: larry,
  sport: cyclisme
)

UserSport.create!(
  user: larry,
  sport: thriathlon
)

UserSport.create!(
  user: larry,
  sport: course_a_pied
)

UserSport.create!(
  user: larry,
  sport: natation
)

UserSport.create!(
  user: larry,
  sport: swimrun
)

# charles
UserSport.create!(
  user: charles,
  sport: cyclisme
)

UserSport.create!(
  user: charles,
  sport: thriathlon
)

UserSport.create!(
  user: charles,
  sport: course_a_pied
)

UserSport.create!(
  user: charles,
  sport: natation
)

UserSport.create!(
  user: charles,
  sport: swimrun
)

# tony
UserSport.create!(
  user: tony,
  sport: cyclisme
)

UserSport.create!(
  user: tony,
  sport: thriathlon
)

UserSport.create!(
  user: tony,
  sport: course_a_pied
)

UserSport.create!(
  user: tony,
  sport: natation
)

UserSport.create!(
  user: tony,
  sport: swimrun
)

# chuck
UserSport.create!(
  user: chuck,
  sport: cyclisme
)

UserSport.create!(
  user: chuck,
  sport: thriathlon
)

UserSport.create!(
  user: chuck,
  sport: course_a_pied
)

UserSport.create!(
  user: chuck,
  sport: natation
)

UserSport.create!(
  user: chuck,
  sport: swimrun
)
# kylian
UserSport.create!(
  user: kylian,
  sport: cyclisme
)

UserSport.create!(
  user: kylian,
  sport: thriathlon
)

UserSport.create!(
  user: kylian,
  sport: course_a_pied
)

UserSport.create!(
  user: kylian,
  sport: natation
)

UserSport.create!(
  user: kylian,
  sport: swimrun
)
# lebron
UserSport.create!(
  user: lebron,
  sport: cyclisme
)

UserSport.create!(
  user: lebron,
  sport: thriathlon
)

UserSport.create!(
  user: lebron,
  sport: course_a_pied
)

UserSport.create!(
  user: lebron,
  sport: natation
)

UserSport.create!(
  user: lebron,
  sport: swimrun
)
# michael
UserSport.create!(
  user: michael,
  sport: cyclisme
)

UserSport.create!(
  user: michael,
  sport: thriathlon
)

UserSport.create!(
  user: michael,
  sport: course_a_pied
)

UserSport.create!(
  user: michael,
  sport: natation
)

UserSport.create!(
  user: michael,
  sport: swimrun
)

# david
UserSport.create!(
  user: david,
  sport: cyclisme
)

UserSport.create!(
  user: david,
  sport: thriathlon
)

UserSport.create!(
  user: david,
  sport: course_a_pied
)

UserSport.create!(
  user: david,
  sport: natation
)

UserSport.create!(
  user: david,
  sport: swimrun
)

# jody
UserSport.create!(
  user: jody,
  sport: cyclisme
)

UserSport.create!(
  user: jody,
  sport: thriathlon
)

UserSport.create!(
  user: jody,
  sport: course_a_pied
)

UserSport.create!(
  user: jody,
  sport: natation
)

UserSport.create!(
  user: jody,
  sport: swimrun
)


# race_sports: sport_id/race_id/ distance
RaceSport.create!(
  race: ,
  sport:
)

# race_groups: user_id/race_id/status/token

champions_mon_frere = RaceGroup.create!(
  user: momo,
  race: marathon_de_nantes,
  status: ,
  token: SecureRandom.hex(8) #numero unique aléatoire
  )

les_lorientais = RaceGroup.create!(
  user: charles,
  race: lorient_triathlons,
  status: ,
  token: SecureRandom.hex(8) #numero unique aléatoire
  )

les_nantais = RaceGroup.create!(
  user: jody,
  race: anjou_m,
  status: ,
  token: SecureRandom.hex(8) #numero unique aléatoire
  )

les_ricains = RaceGroup.create!(
  user: tony,
  race: breizh_start,
  status: ,
  token: SecureRandom.hex(8) #numero unique aléatoire
  )

les_potos = RaceGroup.create!(
  user: kylian,
  race: quiberon_triathlons,
  status: ,
  token: SecureRandom.hex(8) #numero unique aléatoire
  )

les_invincibles = RaceGroup.create!(
  user: lebron,
  race: marathon_de_la_loire,
  status: ,
  token: SecureRandom.hex(8) #numero unique aléatoire
  )

rouge = RaceGroup.create!(
  user: momo,
  race: anjou_s,
  status: ,
  token: SecureRandom.hex(8) #numero unique aléatoire
  )

# ////////////////////
# //////////////////////
# /////////////////////
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
