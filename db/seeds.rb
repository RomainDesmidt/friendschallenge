# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# users nom/prénom/photoprofil/fb_id/email/certifmedic/certificate_date/level/address


# races: description/name/place/distance//date/price/officiel_event_link/picture_race/trail_map_url/trail_map_picture/level/status

@level = ["débutant", "intermédiaire", "expert"]
@status = [true, false]

quiberon_triathlons = Race.create! (
  name: "Triathlons de Quiberon",
  description:"Triathlons | Olympic | Sprint | Kids | Relay |",
  place: "Quiberon",
  distance: "[Swim: 1.5 km, Bike: 40 km, Run: 10 km]",
  date: "02/09/17",
  price: 30,
  officiel_event_link: "http://quiberontriathlon.fr/?page_id=2",
  trail_map_url: "http://quiberontriathlon.fr/wp-content/uploads/2017/02/EPREUVE-M-2017.pdf",
  trail_map_picture: "",
  level: "",
  status: @status.sample,
  picture:,
)

lorient_triathlons = Race.create!(
  name: "Triathlons de Lorient",
  description:"Triathlons | Olympic | Sprint | Kids | Relay |",
  place: "Lorient",
  distance: ["Swim: 1.5", "Bike: 40", "Run: 10"],
  date: "28/08/17",
  price: 25,
  officiel_event_link: "http://triduter.lorienttriathlon.fr/",
  trail_map_url: "http://triduter.lorienttriathlon.fr/2016/06/15/s-sprint/",
  trail_map_picture: "http://triduter.lorienttriathlon.fr/2016/06/15/s-sprint/",
  level: "",
  status: @status.sample,
  picture:,
)

anjou_m = Race.create!(
  name: "Anjou_Swimrun",
  description:"Swimrun",
  place: "Angers",
  distance: ["swim: 4,623", "run: 21,747"],
  date: "23/04/2018",
  price: 130,
  officiel_event_link: "http://angersswimrun.onlinetri.com/",
  trail_map_url: "",
  trail_map_picture: "",
  level: "",
  status: @status.sample,
  picture:,
)

anjou_s = Race.create!(
  name: "Anjou_Swimrun",
  description:"Swimrun",
  place: "Angers",
  distance: ["swim: 2,446", "run: 13,184"],
  date: "23/04/2018",
  price: 65,
  officiel_event_link: "http://angersswimrun.onlinetri.com/",
  trail_map_url: "",
  trail_map_picture: "",
  level: "",
  status: @status.sample,
  picture:,
)

 breizh_start = Race.create!(
  name: "Breizh_Start",
  description:"Swimrun",
  place: "Fouesnant",
  distance: ["swim: 4", "run: 14"],
  date: "14/05/2017",
  price: 120,
  officiel_event_link: "http://www.colorsport-event.com/evenements/breizh-swimrun/",
  trail_map_url: "http://www.colorsport-event.com/evenements/breizh-swimrun/",
  trail_map_picture: "",
  level: "",
  status: @status.sample,
  picture: ,
)

marathon_de_la_loire = Race.create!(
  name: "Marathon_de_la_Loire",
  description:"Marathon",
  place: "Saumur",
  distance: "42 km",
  date: "16/04/2017",
  price: "70",
  officiel_event_link: "http://www.marathon-loire.fr/",
  trail_map_url: "http://tracedetrail.fr/fr/trace/trace/27657",
  trail_map_picture: "",
  level: "",
  status: @status.sample,
  picture: ,
)

marathon_de_nantes = Race.create!(
  name: "Marathon_de_Nantes",
  description:"",
  place: "Lorient",
  distance: "42 km",
  date: "30/04/2017",
  price: "58",
  officiel_event_link: "http://www.marathondenantes.com/",
  trail_map_url: "http://www.marathondenantes.com/wp-content/uploads/2015/11/Parcours-Marathon-2016.jpg",
  trail_map_picture: "",
  level: "",
  status: @status.sample,
  picture: ,
)

lorient_triathlons = Race.create!(
  name: "",
  description:"",
  place: "Lorient",
  distance: "",
  date: "",
  price: "",
  officiel_event_link: "",
  trail_map_url: "",
  trail_map_picture: "",
  level: "",
  status: @status.sample,,
  picture:
)




# user_sport: sport_id/user_id/
# sports: name
sports = Sport.create! ["natation", "course à pied", "cyclisme", "triathlon", "swimrun" ]
# race_sports: sport_id/race_id
# user_races: user_id/race_id/status/token
# shared_races: user_id/user_race_id/status
