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

# user_levels = ["débutant", "intermédiaire", "expert"]

# momo = User.create!(
#   first_name: "Momo",
#   last_name: "Smith",
#   address: "1 Square de Roc Épine 49100 Angers",
#   facebook_id: " ",
#   email: "momo@gmail.com",
#   password: "123456",
#   password_confirmation: "123456",
#   medical_certificate_date: Date.new(2016,2,25),
#   medical_certificate:"photo",
#   profile_picture:"photo",
#   level: level.sample,
#   )

# john = User.create!(
#   first_name: "John",
#   last_name: "Dubois",
#   address: "4 Place du Dr Faust 85000 La Roche-sur-Yon",
#   facebook_id: " ",
#   email: "john@gmail.com",
#   password: "123456",
#   password_confirmation: "123456",
#   medical_certificate_date: Date.new(2017,1,15),
#   medical_certificate:"photo",
#   profile_picture:"photo",
#   level: level.sample,
#   )

# lee = User.create!(
#   first_name: "Lee",
#   last_name: "Sue",
#   address: "16 Rue de Kerozen 56000 Vannes",
#   facebook_id: " ",
#   email: "lee@gmail.com",
#   password: "123456",
#   password_confirmation: "123456",
#   medical_certificate_date: Date.new(2016,6,23),
#   medical_certificate:"photo",
#   profile_picture:"photo",
#   level: level.sample,
#   )

# chuck = User.create!(
#   first_name: "Alexandre",
#   last_name: "Legrand",
#   address: "3 Rue Raymond Marcellin 56370 Sarzeau",
#   facebook_id: " ",
#   email: "chuck@gmail.com",
#   password: "123456",
#   password_confirmation: "123456",
#   medical_certificate_date: Date.new(2017,2,11),
#   medical_certificate:"photo",
#   profile_picture:"photo",
#   level: level.sample,
#   )

# larry = User.create!(
#   first_name: "Romain",
#   last_name: "Perrin",
#   address: "NY",
#   facebook_id: " ",
#   email: "larry@gmail.com",
#   password: "123456",
#   password_confirmation: "123456",
#   medical_certificate_date: Date.new(2016,9,30),
#   medical_certificate:"photo",
#   profile_picture:"photo",
#   level: level.sample,
#   )

# charles = User.create!(
#   first_name: "Charles",
#   last_name: "Lacoche",
#   address: "Paris",
#   facebook_id: " ",
#   email: "charles@gmail.com",
#   password: "123456",
#   password_confirmation: "123456",
#   medical_certificate_date: Date.new(2017,12,11),
#   medical_certificate:"photo",
#   profile_picture:"photo",
#   level: level.sample,
#   )

# tony = User.create!(
#   first_name: "Tony",
#   last_name: "Mathieu",
#   address: "lyon",
#   facebook_id: " ",
#   email: "tony@gmail.com",
#   password: "123456",
#   password_confirmation: "123456",
#   medical_certificate_date: Date.new(2017,11,3),
#   medical_certificate:"photo",
#   profile_picture:"photo",
#   level: level.sample,
#   )

# kylian = User.create!(
#   first_name: "Kylian",
#   last_name: "Fontaine",
#   address: "Monaco",
#   facebook_id: " ",
#   email: "kylian@gmail.com",
#   password: "123456",
#   password_confirmation: "123456",
#   medical_certificate_date: Date.new(2017,4,10),
#   medical_certificate:"photo",
#   profile_picture:"photo",
#   level: level.sample,
#   )

# lebron = User.create!(
#   first_name: "Yoann",
#   last_name: "James",
#   address: "Cleveland",
#   facebook_id: " ",
#   email: "lebron@gmail.com",
#   password: "123456",
#   password_confirmation: "123456",
#   medical_certificate_date: Date.new(2017,9,3),
#   medical_certificate:"photo",
#   profile_picture:"photo",
#   level: level.sample,
#   )

# michael = User.create!(
#   first_name: "Michael",
#   last_name: "Chevalier",
#   address: "Chicago",
#   facebook_id: " ",
#   email: "michael@gmail.com",
#   password: "123456",
#   password_confirmation: "123456",
#   medical_certificate_date: Date.new(2017,6,22),
#   medical_certificate:"photo",
#   profile_picture:"photo",
#   level: level.sample,
#   )

# david = User.create!(
#   first_name: "David",
#   last_name: "Martinez",
#   address: "Buesnos Aires",
#   facebook_id: " ",
#   email: "david@gmail.com",
#   password: "123456",
#   password_confirmation: "123456",
#   medical_certificate_date: Date.new(2017,3,15),
#   medical_certificate:"photo",
#   profile_picture:"photo",
#   level: level.sample,
#   )

# jody = User.create!(
#   first_name: "Jody",
#   last_name: "Vanden",
#   address: "Melburn",
#   facebook_id: " ",
#   email: "jody@gmail.com",
#   password: "123456",
#   password_confirmation: "123456",
#   medical_certificate_date: Date.new(2017,9,15),
#   medical_certificate:"photo",
#   profile_picture:"photo",
#   level: level.sample,
#   )

# /////////////////////////////////////////////////////////////////////////////////////////////
# ////////////////////////////////////////////////////////////////////////////////////////////
# ///////////////////////////////////////////////////////////////////////////////////////////

# races: description/name/place/distance/date/price/officiel_event_link/picture_race/trail_map_url/trail_map_picture/level/status

races_levels = ["débutant", "intermédiaire", "expert"]
status = ["exist", "open", "closed"]
sport = ["swimming", "running", "cycling"]

races_attributes = [
  # Hash representant les infos d'une course
  { #Triathlon de Quiberon
    attributes: {# Natation 1.5, Course 10, Cyclisme 38
      name: "Triathlon de Quiberon M",
      description:"L’édition 2017 des Triathlons de la Presqu’île de Quiberon \
        se déroulera,  les 2 et 3 septembre 2017. Cette année, toutes les \
        épreuves se dérouleront à Quiberon, y compris celles des poussins et \
        pupilles. Le départ de toutes les épreuves aura lieu sur la Grande \
        Plage de Quiberon. Pour la sécurité des athlètes les parcours ont été \
        revisités en privilégiant le littoral.
        15H00 – Epreuves M",
      location: "Quiberon, France",
      date: Date.new(2017,9,3),
      price: 30,
      trail_map_url: "http://quiberontriathlon.fr/wp-content/uploads/2017/02/EPREUVE-M-2017.pdf",
      officiel_event_url: "http://quiberontriathlon.fr",
      level: "expert" # tu choisis manuellement,
      status: "closed" # pareil
    },
    trail_map_picture_path: File.new(Rails.root.join("db/fixtures/images/triathlon_de_quiberon_m/map.jpg")),
    picture_path: File.new(Rails.root.join("db/fixtures/images/triathlon_de_quiberon_m/race.jpg"))
  }
]
#   {#Triathlon de Lorient
#     attributes: {# Natation 0.75, Course 5, Cyclisme 20
#       name: "Triathlon de Lorient",
#       description:"Le triathlon S – SPRINT aura lieu le dimanche 28 août \
#       après-midi. C’est une épreuve ouverte aux personnes de 14 ans (2002) et \
#       plus, licenciées ou non licenciées. Pour ces dernières, un certificat \
#       médical ainsi que le pass-compétition sont à présenter le jour de \
#       l’épreuve.",
#       place: "Lorient, France",
#       date: Date.new(2017,8,28),
#       price: 25,
#       officiel_event_url: "http://triduter.lorienttriathlon.fr/",
#       level: "intermédiaire",
#       status: "open",
#       trail_map_url: "http://triduter.lorienttriathlon.fr/2016/06/15/s-sprint/"
#     },
#     trail_map_picture_path: File.new(Rails.root.join("db/fixtures/race_map/map#{index}.jpg")),
#     picture: File.new(Rails.root.join("db/fixtures/images/#{index}.jpg"))
#   },
#   {#Anjou Swimrun M
#     attributes: {# Natation 4.374, Course 20.298
#       name: "Anjou Swimrun M",
#       description:"Nous association AquaSport basé sur Angers organise le \
#       23 Avril 2017 une course qui alterne course à pied et natation autour \
#       du Lac de Maine. Cette course s'appelle Anjou SwimRun et passera par \
#       Bouchemaine.",
#       place: "Angers, France",
#       date: Date.new(2017,4,23),
#       price: 130,
#       officiel_event_url: "http://angersswimrun.onlinetri.com/",
#       trail_map_url: "",
#       level: "intermédiaire",
#       status: "closed",
#     },
#     trail_map_picture: File.new(Rails.root.join("db/fixtures/race_map/map#{index}.jpg")),
#     picture: File.new(Rails.root.join("db/fixtures/images/#{index}.jpg")),
#   },
#   {#Anjou Swimrun S
#     attributes: {# Natation 2.123, Course 11.992
#       name: "Anjou Swimrun S",
#       description:"Nous association AquaSport basé sur Angers organise le \
#       23 Avril 2017 une course qui alterne course à pied et natation autour \
#       du Lac de Maine. Cette course s'appelle Anjou SwimRun et passera par \
#       Bouchemaine.",
#       place: "Angers",
#       date: Date.new(2017,4,23),
#       price: 65,
#       officiel_event_url: "http://angersswimrun.onlinetri.com/",
#       trail_map_url: "",
#       level: "débutant",
#       status: "closed"
#       },
#     trail_map_picture: File.new(Rails.root.join("db/fixtures/race_map/map#{index}.jpg")),
#     picture: File.new(Rails.root.join("db/fixtures/images/#{index}.jpg")),
#     },
#   {#Breizh Start
#     attributes: {# Natation 4, Course 14
#       name: "BreizhStart",
#       description:"BREIZH SWIMRUN du dimanche 14 mai 2017\
#         DEPARTS à 10 H
#         Le SWIMRUN est une discipline qui se court en binôme et qui consiste à \
#         enchaîner les parcours de course à pied et des parcours de natation. Sans \
#         s'arrêter et bien sur sans relai.
#         Serez vous prêt à faire corps pour vous dépasser et à braver les éléments ?
#         BREIZH SWIMRUN, c'est un espace naturel et sauvage où il faudra être 2 \
#         pour tenter l'aventure !
#         Attention, c'est une course extrème, il faudra être prêt physiquement et \
#         mentalement pour tenter ce défi.
#         Par équipe de 2, vous enchaînerez les parcours de nage en  mer et  de \
#         course à pied, émotions garanties !

#         Le SWIMRUN, c'est un état d'esprit, un véritable défi",
#       place: "Fouesnant, France",
#       date: Date.new(2017,5,14),
#       price: 60,
#       official_event_url: "http://www.colorsport-event.com/evenements/breizh-swimrun/",
#       trail_map_url: "http://www.colorsport-event.com/evenements/breizh-swimrun/"
#       level: "intermédiaire",
#       status: "open"
#     },
#   trail_map_picture: File.new(Rails.root.join("db/fixtures/race_map/map4.jpg")),
#   picture: File.new(Rails.root.join("db/fixtures/images/swim_race2.jpg"))
#   },
#   {#Le Dix de la Loire
#     attributes: {# Course 10
#       name: "Le Dix",
#       description:"Sur une distance à la fois sportive, conviviale et \
#         familiale, le Dix km vous propose de partir à la découverte, dans un \
#         cadre festif, des richesses qu’abrite la Ville de Saumur. Sur un \
#         parcours roulant et mesuré officiellement, le Dix kilomètres présente \
#         pour ambition de faire découvrir, au plus grand nombre, les joies et \
#         plaisirs de la course à pied en compétition.

#         Quel que soit votre profil et votre objectif de course, l’épreuve \
#         du 10 kilomètres se présente comme une distance de référence. Seul, \
#         en famille ou entre amis, le Dix vous invite à célébrer l’amour du \
#         sport et du dépassement de soi. Profitez d’un encadrement d’excellence\
#         , d’animations hautes en couleur et marquez de votre empreinte la 1ère \
#         édition du Dix km de Saumur !",
#       place: "Saumur, France",
#       date: Date.new(2017,4,16),
#       price: 14,
#       officiel_event_url: "http://www.marathon-loire.fr/les-courses-du-marathon-de-la-loire/le-10-kilometres-de-saumur",
#       trail_map_url: "http://tracedetrail.fr/fr/trace/trace/27657",
#       level: "débutant",
#       status: "open"
#     }
#     trail_map_picture: File.new(Rails.root.join("db/fixtures/race_map/map#{index}.jpg")),
#     picture: File.new(Rails.root.join("db/fixtures/images/#{index}.jpg"))
#   },
#   {#Marathon de Nantes
#     attributes: {# Course 42.195
#       name: "Marathon de Nantes",
#       description: "A chacun sa distance pour découvrir Nantes et son patrimoine
#       Amateurs de course à pied, compétiteurs ou pratiquants occasionnels, le \
#       Marathon de Nantes vous donne rendez-vous les 29 et 30 avril 2017. Après \
#       une année 2016 record, le Marathon de Nantes et ses 3 épreuves annexes \
#       accueilleront pour la 37ème édition plus de 16000 coureurs de la France \
#       entière, une occasion unique de s’approprier la ville, sur des parcours \
#       100\% urbains. Et où chaque finisher en gardera un souvenir mémorable !
#       Près de 4000 marathoniens viennent se confronter à la mythique distance \
#       de 42,195 km. De la Cathédrale à la Tour LU en passant par le Jardin des \
#       Plantes et le site des Machines de l’Ile, le parcours offre un décor \
#       incomparable. Les participants profitent des sites historiques et culturels \
#       de la ville, promesse d’une véritable visite touristique de Nantes !
#       Pour rendre cette belle fête du running accessible au plus grand nombre, \
#       trois épreuves sont proposées en parallèle au Marathon. Les Foulées de \
#       l’éléphant by Decathlon « ouvrent le bal » et se tiennent de nouveau en \
#       nocturne le samedi 29 avril. Après une première édition remarquée, le \
#       semi-marathon by Sobhi Sport fait dorénavant partie du paysage de \
#       l’événement tout comme le Marathon Relais Groupama, réservé aux entreprises \
#       qui souhaitent fédérer leurs collaborateurs autour d’un challenge original.

#       N’attendez plus, rejoignez le peloton !",
#     place: "Lorient, France",
#     date: Date.new(2017,4,30),
#     price: 52,
#     officiel_event_url: "http://www.marathondenantes.com/",
#     trail_map_url: "https://www.google.com/maps/d/viewer?mid=1zPAnEnJcNxHw36lA5HhXd995r0E&ll=47.211292286413745%2C-1.5622180544098683&z=14",
#     level: "expert",
#     status: "open"
#   },
#   trail_map_picture: File.new(Rails.root.join("db/fixtures/race_map/map#{index}.jpg")),
#   picture: File.new(Rails.root.join("db/fixtures/images/#{index}.jpg"))
#   }


# ]

# races_attributes.each do |race_attributes|
#   race = Race.create(race_attributes)
# end



# # /////////////////////////////////////////////////////////////////////////////////////////////
# # ////////////////////////////////////////////////////////////////////////////////////////////
# # ///////////////////////////////////////////////////////////////////////////////////////////

# # sports: name

# swimming = Sport.create!(name: "swimming")
# running = Sport.create!(name: "course à pied")
# cycling = Sport.create!(name: "cycling")
# # triathlon = Sport.create!(name: "triathlon")
# # swimrun = Sport.create!(name: "swimrun")


# # /////////////////////////////////////////////////////////////////////////////////////////////
# # ////////////////////////////////////////////////////////////////////////////////////////////
# # ///////////////////////////////////////////////////////////////////////////////////////////

# # user_sport: sport_id/user_id/

# # momo
# UserSport.create!(
#   user: momo,
#   sport: cycling
# )

# UserSport.create!(
#   user: momo,
#   sport: running
# )

# UserSport.create!(
#   user: momo,
#   sport: swimming
# )

# # lee
# UserSport.create!(
#   user: lee,
#   sport: cycling
# )

# UserSport.create!(
#   user: lee,
#   sport: running
# )

# UserSport.create!(
#   user: lee,
#   sport: swimming
# )

# # larry
# UserSport.create!(
#   user: larry,
#   sport: cycling
# )

# UserSport.create!(
#   user: larry,
#   sport: running
# )

# UserSport.create!(
#   user: larry,
#   sport: swimming
# )

# # charles
# UserSport.create!(
#   user: charles,
#   sport: cycling
# )

# UserSport.create!(
#   user: charles,
#   sport: running
# )

# UserSport.create!(
#   user: charles,
#   sport: swimming
# )

# # tony
# UserSport.create!(
#   user: tony,
#   sport: cycling
# )

# UserSport.create!(
#   user: tony,
#   sport: running
# )

# UserSport.create!(
#   user: tony,
#   sport: swimming
# )

# # chuck
# UserSport.create!(
#   user: chuck,
#   sport: cycling
# )

# UserSport.create!(
#   user: chuck,
#   sport: running
# )

# UserSport.create!(
#   user: chuck,
#   sport: swimming
# )

# # kylian
# UserSport.create!(
#   user: kylian,
#   sport: cycling
# )

# UserSport.create!(
#   user: kylian,
#   sport: running
# )

# UserSport.create!(
#   user: kylian,
#   sport: swimming
# )

# # lebron
# UserSport.create!(
#   user: lebron,
#   sport: cycling
# )

# UserSport.create!(
#   user: lebron,
#   sport: running
# )

# UserSport.create!(
#   user: lebron,
#   sport: swimming
# )

# # michael
# UserSport.create!(
#   user: michael,
#   sport: cycling
# )

# UserSport.create!(
#   user: michael,
#   sport: running
# )

# UserSport.create!(
#   user: michael,
#   sport: swimming
# )

# # david
# UserSport.create!(
#   user: david,
#   sport: cycling
# )

# UserSport.create!(
#   user: david,
#   sport: running
# )

# UserSport.create!(
#   user: david,
#   sport: swimming
# )

# # jody
# UserSport.create!(
#   user: jody,
#   sport: cycling
# )

# UserSport.create!(
#   user: jody,
#   sport: running
# )

# UserSport.create!(
#   user: jody,
#   sport: swimming
# )

# # /////////////////////////////////////////////////////////////////////////////////////////////
# # ////////////////////////////////////////////////////////////////////////////////////////////
# # ///////////////////////////////////////////////////////////////////////////////////////////

# # race_sports: sport_id/race_id/ distance
# # marathon de nantes
# RaceSport.create!(
#   race: marathon_de_nantes,
#   sport: running,
#   distance: 42
# )

# marathon_de_nantes.calculate_total_distance
# marathon_de_nantes.save

# # marathon de la loire
# RaceSport.create!(
#   race: marathon_de_la_loire,
#   sport: running,
#   distance: 42
# )

# # breizh start
# RaceSport.create!(
#   race: breizh_start,
#   sport: running,
#   distance: 14
# )

# RaceSport.create!(
#   race: breizh_start,
#   sport: swimming,
#   distance: 4
# )

# # Anjou M
# RaceSport.create!(
#   race: anjou_m,
#   sport: running,
#   distance: 21
# )

# RaceSport.create!(
#   race: anjou_m,
#   sport: swimming;
#   distance: 4.6
# )


# # Anjou S
# RaceSport.create!(
#   race: anjou_s,
#   sport: running,
#   distance: 13
# )

# RaceSport.create!(
#   race: anjou_s,
#   sport: swimming,
#   distance: 2.4
# )

# # /////////////////////////////////////////////////////////////////////////////////////////////
# # ////////////////////////////////////////////////////////////////////////////////////////////
# # ///////////////////////////////////////////////////////////////////////////////////////////

# # race_groups: user_id/race_id/status/token

# champions_mon_frere = RaceGroup.create!(
#   user: momo,
#   race: marathon_de_nantes,
#   token: SecureRandom.hex(8) #numero unique aléatoire
#   )

# les_lorientais = RaceGroup.create!(
#   user: charles,
#   race: lorient_triathlons,
#   token: SecureRandom.hex(8) #numero unique aléatoire
#   )

# les_nantais = RaceGroup.create!(
#   user: jody,
#   race: anjou_m,
#   token: SecureRandom.hex(8) #numero unique aléatoire
#   )

# les_ricains = RaceGroup.create!(
#   user: tony,
#   race: breizh_start,
#   token: SecureRandom.hex(8) #numero unique aléatoire
#   )

# les_potos = RaceGroup.create!(
#   user: kylian,
#   race: quiberon_triathlons,
#   token: SecureRandom.hex(8) #numero unique aléatoire
#   )

# les_invincibles = RaceGroup.create!(
#   user: lebron,
#   race: marathon_de_la_loire,
#   token: SecureRandom.hex(8) #numero unique aléatoire
#   )

# rouge = RaceGroup.create!(
#   user: momo,
#   race: anjou_s,
#   token: SecureRandom.hex(8) #numero unique aléatoire
#   )

# # /////////////////////////////////////////////////////////////////////////////////////////////
# # ////////////////////////////////////////////////////////////////////////////////////////////
# # ///////////////////////////////////////////////////////////////////////////////////////////

# # group_memberships: user_id/user_race_id/status

# status_group_memberships = ["inscrit", "interessé", "pas interessé", "non répondu"]

# # 1er groupe: champions_mon_frere

# GroupMembership.create!(
#   user: momo,
#   race_group: champions_mon_frere,
#   status_group_memberships: "inscrit"
# )
# GroupMembership.create!(
#   user: larry,
#   race_group: champions_mon_frere,
#   status_group_memberships: status_group_memberships.sample
# )


# # 2eme groupe: les_lorientais
# GroupMembership.create!(
#   user: charles,
#   race_group: les_lorientais,
#   status_group_memberships: "inscrit"
# )
# GroupMembership.create!(
#   user: chuck,
#   race_group: les_lorientais,
#   status_group_memberships: status_group_memberships.sample
# )
# GroupMembership.create!(
#   user: john,
#   race_group: les_lorientais,
#   status_group_memberships: status_group_memberships.sample
# )
# GroupMembership.create!(
#   user: tony,
#   race_group: les_lorientais,
#   status_group_memberships: status_group_memberships.sample
# )

# # 3eme groupe: les_nantais
# GroupMembership.create!(
#   user: jody,
#   race_group: les_nantais,
#   status_group_memberships: "inscrit"
# )
# GroupMembership.create!(
#   user: momo,
#   race_group: les_nantais,
#   status_group_memberships: "inscrit"
# )
# GroupMembership.create!(
#   user: momo,
#   race_group: les_nantais,
#   status_group_memberships: status_group_memberships.sample
# )

# # 4ème groupe: les_ricains
# GroupMembership.create!(
#   user: tony,
#   race_group: les_ricains,
#   status_group_memberships: "inscrit"
# )
# GroupMembership.create!(
#   user: john,
#   race_group: les_ricains,
#   status_group_memberships: status_group_memberships.sample
# )
# GroupMembership.create!(
#   user: larry,
#   race_group: les_ricains,
#   status_group_memberships: status_group_memberships.sample
# )
# GroupMembership.create!(
#   user: lebron,
#   race_group: les_ricains,
#   status_group_memberships: status_group_memberships.sample
# )

# # 5ème groupe: les_potos
# GroupMembership.create!(
#   user: kylian,
#   race_group: les_potos,
#   status_group_memberships: "inscrit"
# )
# GroupMembership.create!(
#   user: momo,
#   race_group: les_potos,
#   status_group_memberships: status_group_memberships.sample
# )
# GroupMembership.create!(
#   user: charles,
#   race_group: les_potos,
#   status_group_memberships: status_group_memberships.sample
# )

# # 6ème groupe: les_invincibles
# GroupMembership.create!(
#   user: lebron,
#   race_group: les_invincibles,
#   status_group_memberships: status_group_memberships.sample
# )

# GroupMembership.create!(
#   user: chuck,
#   race_group: les_invincibles,
#   status_group_memberships: status_group_memberships.sample
# )

# GroupMembership.create!(
#   user: larry,
#   race_group: les_invincibles,
#   status_group_memberships: status_group_memberships.sample
# )

# # 7ème groupe: rouge
# GroupMembership.create!(
#   user: momo,
#   race_group: rouge,
#   status_group_memberships: status_group_memberships.sample
# )

# GroupMembership.create!(
#   user: jody,
#   race_group: rouge,
#   status_group_memberships: status_group_memberships.sample
# )
