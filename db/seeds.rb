# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# races: description/name/place/distance//date/price/official_event_url/picture_race/trail_map_url/trail_map_picture/level/status
User.destroy_all
Race.destroy_all
Sport.destroy_all
RaceSport.destroy_all
RaceGroup.destroy_all
UserSport.destroy_all
GroupMembership.destroy_all

# /////////////////////////////////////////////////////////////////////////////////////////////
# ////////////////////////////////////////////////////////////////////////////////////////////
# ///////////////////////////////////////////////////////////////////////////////////////////

# users nom/first_name/photoprofil/fb_id/email/certifmedic/certificate_date/level/address


# # sports: name

sports_attributes = [
  {
    name: "Cyclisme"
  },
  {
    name: "Course à pied"
  },
  {
    name: "Natation"
  }
]

sports_attributes.each do |sport_attributes|
  Sport.create(sport_attributes)
end

user_levels = ["débutant", "intermédiaire", "expert"]

users_attributes = [
  {
    attributes: {
      first_name: "Jane",
      last_name: "Smith",
      address: "1 Square de Roc Épine 49100 Angers",
      uid: "",
      email: "jane@gmail.com",
      password: "123456",
      password_confirmation: "123456",
      medical_certificate_date: Date.new(2016,2,25),
      level: user_levels.sample
    },
    medical_certificate: File.new(Rails.root.join("db/fixtures/images/certificat_medical/certificat_medical.png")),
    profile_picture_url: "http://lorempixel.com/300/300/people/#{rand(40) + 1}/",
    sports_names: ["Natation", "Course à pied"]
  },

  {
    attributes: {
      first_name: "John",
      last_name: "Dubois",
      address: "4 Place du Dr Faust 85000 La Roche-sur-Yon",
      uid: "",
      email: "john@gmail.com",
      password: "123456",
      password_confirmation: "123456",
      medical_certificate_date: Date.new(2017,1,15),
      level: user_levels.sample
    },
    medical_certificate: File.new(Rails.root.join("db/fixtures/images/certificat_medical/certificat_medical.png")),
    profile_picture_url: "http://lorempixel.com/300/300/people/#{rand(40) + 1}/",
    sports_names: ["Cyclisme", "Course à pied"]

  },

  {
    attributes: {
      first_name: "Lee",
      last_name: "Sue",
      address: "16 Rue de Kerozen 56000 Vannes",
      uid: "",
      email: "lee@gmail.com",
      password: "123456",
      password_confirmation: "123456",
      medical_certificate_date: Date.new(2016,6,23),
      level: user_levels.sample
    },
    medical_certificate: File.new(Rails.root.join("db/fixtures/images/certificat_medical/certificat_medical.png")),
    profile_picture_url: "http://lorempixel.com/300/300/people/#{rand(40) + 1}/",
    sports_names: ["Cyclisme"]
  },

  {
    attributes: {
      first_name: "Alexandre",
      last_name: "Legrand",
      address: "3 Rue Raymond Marcellin 56370 Sarzeau",
      uid: "",
      email: "chuck@gmail.com",
      password: "123456",
      password_confirmation: "123456",
      medical_certificate_date: Date.new(2017,2,11),
      level: user_levels.sample
    },
    medical_certificate: File.new(Rails.root.join("db/fixtures/images/certificat_medical/certificat_medical.png")),
    profile_picture_url: "http://lorempixel.com/300/300/people/#{rand(40) + 1}/",
    sports_names: ["Natation", "Cyclisme"]
  },

  {
    attributes: {
      first_name: "Romain",
      last_name: "Perrin",
      address: "1 Rue du Colonel Lebel 49300 Cholet",
      uid: "",
      email: "larry@gmail.com",
      password: "123456",
      password_confirmation: "123456",
      medical_certificate_date: Date.new(2016,9,30),
      level: user_levels.sample
    },
    medical_certificate: File.new(Rails.root.join("db/fixtures/images/certificat_medical/certificat_medical.png")),
    profile_picture_url: "http://lorempixel.com/300/300/people/#{rand(40) + 1}/",
    sports_names: ["Natation"]
  },

  {
    attributes: {
      first_name: "Charles",
      last_name: "Lacoche",
      address: "20 rue de madrid 75008 Paris",
      uid: "",
      email: "charles@gmail.com",
      password: "123456",
      password_confirmation: "123456",
      medical_certificate_date: Date.new(2017,12,11),
      level: user_levels.sample
    },
    medical_certificate: File.new(Rails.root.join("db/fixtures/images/certificat_medical/certificat_medical.png")),
    profile_picture_url: "http://lorempixel.com/300/300/people/#{rand(40) + 1}/",
    sports_names: ["Course à pied"]
  },

  {
    attributes: {
      first_name: "Tony",
      last_name: "Mathieu",
      address: "42 Rue Père Chevrier 69007 Lyon",
      uid: "",
      email: "tony@gmail.com",
      password: "123456",
      password_confirmation: "123456",
      medical_certificate_date: Date.new(2017,11,3),
      level: user_levels.sample
    },
    medical_certificate: File.new(Rails.root.join("db/fixtures/images/certificat_medical/certificat_medical.png")),
    profile_picture_url: "http://lorempixel.com/300/300/people/#{rand(40) + 1}/",
    sports_names: ["Cyclisme"]
  },

  {
    attributes: {
      first_name: "Kylian",
      last_name: "Fontaine",
      address: "4 Rue Georges Courteline 31100 Toulouse",
      uid: "",
      email: "kylian@gmail.com",
      password: "123456",
      password_confirmation: "123456",
      medical_certificate_date: Date.new(2017,4,10),
      level: user_levels.sample
    },
    medical_certificate: File.new(Rails.root.join("db/fixtures/images/certificat_medical/certificat_medical.png")),
    profile_picture_url: "http://lorempixel.com/300/300/people/#{rand(40) + 1}/",
    sports_names: ["Cyclisme", "Course à pied"]
  },

  {
    attributes: {
      first_name: "Yoann",
      last_name: "James",
      address: "117 Rue Hector Berlioz 44300 Nantes",
      uid: "",
      email: "lebron@gmail.com",
      password: "123456",
      password_confirmation: "123456",
      medical_certificate_date: Date.new(2017,9,3),
      level: user_levels.sample
    },
    medical_certificate: File.new(Rails.root.join("db/fixtures/images/certificat_medical/certificat_medical.png")),
    profile_picture_url: "http://lorempixel.com/300/300/people/#{rand(40) + 1}/",
    sports_names: ["Natation", "Cyclisme"]
  },

  {
    attributes: {
      first_name: "Michael",
      last_name: "Chevalier",
      address: "44 Rue de la Ripossière 44200 Nantes",
      uid: "",
      email: "michael@gmail.com",
      password: "123456",
      password_confirmation: "123456",
      medical_certificate_date: Date.new(2017,6,22),
      level: user_levels.sample
    },
    medical_certificate: File.new(Rails.root.join("db/fixtures/images/certificat_medical/certificat_medical.png")),
    profile_picture_url: "http://lorempixel.com/300/300/people/#{rand(40) + 1}/",
    sports_names: ["Course à pied"]
  },

  {
    attributes: {
      first_name: "David",
      last_name: "Martinez",
      address: "14 Rue de la Belle Olonnaise 85340 Olonne-sur-Mer",
      uid: "",
      email: "david@gmail.com",
      password: "123456",
      password_confirmation: "123456",
      medical_certificate_date: Date.new(2017,3,15),
      level: user_levels.sample
    },
    medical_certificate: File.new(Rails.root.join("db/fixtures/images/certificat_medical/certificat_medical.png")),
    profile_picture_url: "http://lorempixel.com/300/300/people/#{rand(40) + 1}/",
    sports_names: ["Cyclisme"]
  },

  {
    attributes: {
      first_name: "Jody",
      last_name: "Vanden",
      address: "82 Boulevard Pierre de Coubertin 44800 Saint-Herblain",
      uid: "",
      email: "jody@gmail.com",
      password: "123456",
      password_confirmation: "123456",
      medical_certificate_date: Date.new(2017,9,15),
      level: user_levels.sample
    },
    medical_certificate: File.new(Rails.root.join("db/fixtures/images/certificat_medical/certificat_medical.png")),
    profile_picture_url: "http://lorempixel.com/300/300/people/#{rand(40) + 1}/",
    sports_names: ["Natation", "Course à pied"]
  }
]


users_attributes.each do |user_attributes|
  puts user_attributes[:attributes][:first_name]
  user = User.new(user_attributes[:attributes])
  user.medical_certificate = user_attributes[:medical_certificate]
  user.remote_profile_picture_url = user_attributes[:profile_picture_url]
  sleep 0.4
  user.save

  sports_names = user_attributes[:sports_names]
  unless sports_names.nil?
    sports_names.each do |sport_name|
      sport = Sport.find_by_name(sport_name)
      UserSport.create(user: user, sport: sport)
    end
  end
end


# # /////////////////////////////////////////////////////////////////////////////////////////////
# # ////////////////////////////////////////////////////////////////////////////////////////////
# # ///////////////////////////////////////////////////////////////////////////////////////////
# races: description/name/place/distance/date/price/officiel_event_link/picture_race/trail_map_url/trail_map_picture/level/status

# races_levels = ["débutant", "intermédiaire", "expert"]
# status = ["exist", "open", "closed"]

races_attributes = [
  # Hashes representant les infos des courses
  {
    # Parcours du Semi-marathon de Nantes by Sobhi Sport 21,1 km
    # Course 21.1
    attributes: {
      name: "Semi-marathon de Nantes",
      description: "Après le franc succès de la première édition du Semi-marathon
        by Sobhi Sport en 2016, l’épreuve revient dans les rues de Nantes avec
        un nombre de dossards limité à 4000. Le départ sera donné des Nefs des
        Machines de l’Ile à 8h30 (nouvelle aire de départ). Le tracé suivra la
        boucle principale du marathon avec un parcours 100\% urbain.",
      location: "Nantes, France",
      date: Date.new(2017,4,30),
      price: 26,
      trail_map_url: "https://www.google.com/maps/d/viewer?mid=1zPAnEnJcNxHw36lA5HhXd995r0E",
      official_event_url: "https://www.marathondenantes.com/parcours-semi-marathon/",
      level: "intermédiaire", # tu choisis manuellement
      status: "closed" # pareil
    },
    sports: {
      course_a_pied: 21.1
    },
    trail_map_picture: File.new(Rails.root.join("db/fixtures/images/semi_marathon_nantes/map.jpg")),
    picture: File.new(Rails.root.join("db/fixtures/images/semi_marathon_nantes/race.jpg"))
  },

  {
    # Triathlon de Quiberon
    # Natation 1.5, Course 10, Cyclisme 38
    attributes: {
      name: "Triathlon de Quiberon M",
      description:"L’édition 2017 des Triathlons de la Presqu’île de Quiberon
        se déroulera,  les 2 et 3 septembre 2017. Cette année, toutes les
        épreuves se dérouleront à Quiberon, y compris celles des poussins et
        pupilles. Le départ de toutes les épreuves aura lieu sur la Grande
        Plage de Quiberon. Pour la sécurité des athlètes les parcours ont été
        revisités en privilégiant le littoral.\n
        15H00 – Epreuves M",
      location: "Quiberon, France",
      date: Date.new(2017,9,3),
      price: 30,
      trail_map_url: "http://quiberontriathlon.fr/wp-content/uploads/2017/02/EPREUVE-M-2017.pdf",
      official_event_url: "http://quiberontriathlon.fr",
      level: "expert", # tu choisis manuellement
      status: "closed" # pareil
    },
    sports: {
      natation: 1.5,
      course_a_pied: 10,
      cyclisme: 38
    },
    trail_map_picture: File.new(Rails.root.join("db/fixtures/images/triathlon_de_quiberon_m/map.jpg")),
    picture: File.new(Rails.root.join("db/fixtures/images/triathlon_de_quiberon_m/race.jpg"))
  },

  {
    # Triathlon de Lorient
    # Natation 0.75, Course 5, Cyclisme 20
    attributes: {
      name: "Triathlon de Lorient",
      description:"Le triathlon S – SPRINT aura lieu le dimanche 28 août
      après-midi. C’est une épreuve ouverte aux personnes de 14 ans (2002) et
      plus, licenciées ou non licenciées. Pour ces dernières, un certificat
      médical ainsi que le pass-compétition sont à présenter le jour de
      l’épreuve.",
      location: "Lorient, France",
      date: Date.new(2017,8,28),
      price: 25,
      official_event_url: "http://triduter.lorienttriathlon.fr/",
      level: "intermédiaire",
      status: "open",
      trail_map_url: "http://triduter.lorienttriathlon.fr/2016/06/15/s-sprint/"
    },
    sports: {
      natation: 0.75,
      course_a_pied: 5,
      cyclisme: 20
    },
    trail_map_picture: File.new(Rails.root.join("db/fixtures/images/triathlon_de_lorient/map.png")),
    picture: File.new(Rails.root.join("db/fixtures/images/triathlon_de_lorient/race.jpg"))
  },

  {
    # Anjou Swimrun M
    # Natation 4.374, Course 20.298
    attributes: {
      name: "Anjou Swimrun M",
      description:"Nous association AquaSport basé sur Angers organise le
      23 Avril 2017 une course qui alterne course à pied et natation autour
      du Lac de Maine. Cette course s'appelle Anjou SwimRun et passera par
      Bouchemaine.",
      location: "Angers, France",
      date: Date.new(2017,4,23),
      price: 130,
      official_event_url: "http://angersswimrun.onlinetri.com/",
      trail_map_url: "",
      level: "intermédiaire",
      status: "closed",
    },
    sports: {
      natation: 4.374,
      course_a_pied: 20.298
    },
    trail_map_picture: File.new(Rails.root.join("db/fixtures/images/anjou_swim_run_m/map.jpg")),
    picture: File.new(Rails.root.join("db/fixtures/images/anjou_swim_run_m/race.jpg")),
  },

  {
    # Anjou Swimrun S
    # Natation 2.123, Course 11.992
    attributes: {
      name: "Anjou Swimrun S",
      description:"Nous association AquaSport basé sur Angers organise le
      23 Avril 2017 une course qui alterne course à pied et natation autour
      du Lac de Maine. Cette course s'appelle Anjou SwimRun et passera par
      Bouchemaine.",
      location: "Angers",
      date: Date.new(2017,4,23),
      price: 65,
      official_event_url: "http://angersswimrun.onlinetri.com/",
      trail_map_url: "",
      level: "débutant",
      status: "closed"
      },
    sports: {
      natation: 2.123,
      course_a_pied: 11.992
    },
    trail_map_picture: File.new(Rails.root.join("db/fixtures/images/anjou_swim_run_s/map.jpg")),
    picture: File.new(Rails.root.join("db/fixtures/images/anjou_swim_run_s/race.jpg"))
  },

  {
    # Breizh Start
    # Natation 4, Course 14
    attributes: {
      name: "BreizhStart",
      description:"BREIZH SWIMRUN du dimanche 14 mai 2017 \n
        DEPARTS à 10 H\n
        Le SWIMRUN est une discipline qui se court en binôme et qui consiste à
        enchaîner les parcours de course à pied et des parcours de natation. Sans
        s'arrêter et bien sur sans relai.\n
        Serez vous prêt à faire corps pour vous dépasser et à braver les éléments ?
        BREIZH SWIMRUN, c'est un espace naturel et sauvage où il faudra être 2
        pour tenter l'aventure !\n
        Attention, c'est une course extrème, il faudra être prêt physiquement et
        mentalement pour tenter ce défi.\n
        Par équipe de 2, vous enchaînerez les parcours de nage en  mer et  de
        course à pied, émotions garanties !\n
        \n
        Le SWIMRUN, c'est un état d'esprit, un véritable défi",
      location: "Fouesnant, France",
      date: Date.new(2017,5,14),
      price: 60,
      official_event_url: "http://www.colorsport-event.com/evenements/breizh-swimrun/",
      trail_map_url: "http://www.colorsport-event.com/evenements/breizh-swimrun/",
      level: "intermédiaire",
      status: "open"
    },
    sports: {
      natation: 4,
      course_a_pied: 14
    },
    trail_map_picture: File.new(Rails.root.join("db/fixtures/images/breizh_start/map.jpg")),
    picture: File.new(Rails.root.join("db/fixtures/images/breizh_start/race.jpg"))
  },

  {
    #Le Dix de la Loire
    # Course 10
    attributes: {
      name: "Le Dix",
      description:"Sur une distance à la fois sportive, conviviale et
        familiale, le Dix km vous propose de partir à la découverte, dans un
        cadre festif, des richesses qu’abrite la Ville de Saumur. Sur un
        parcours roulant et mesuré officiellement, le Dix kilomètres présente
        pour ambition de faire découvrir, au plus grand nombre, les joies et
        plaisirs de la course à pied en compétition.\n
        \n
        Quel que soit votre profil et votre objectif de course, l’épreuve
        du 10 kilomètres se présente comme une distance de référence. Seul,
        en famille ou entre amis, le Dix vous invite à célébrer l’amour du
        sport et du dépassement de soi. Profitez d’un encadrement d’excellence
        , d’animations hautes en couleur et marquez de votre empreinte la 1ère
        édition du Dix km de Saumur !",
      location: "Saumur, France",
      date: Date.new(2017,4,16),
      price: 14,
      official_event_url: "http://www.marathon-loire.fr/les-courses-du-marathon-de-la-loire/le-10-kilometres-de-saumur",
      trail_map_url: "http://tracedetrail.fr/fr/trace/trace/27657",
      level: "débutant",
      status: "open"
    },
    sports: {
      course_a_pied: 10
    },
    trail_map_picture: File.new(Rails.root.join("db/fixtures/images/le_dix_saumur/map.jpg")),
    picture: File.new(Rails.root.join("db/fixtures/images/le_dix_saumur/race.jpg"))
  },

  {
    # Marathon de Nantes
    # Course 42.195
    attributes: {
      name: "Marathon de Nantes",
      description: "A chacun sa distance pour découvrir Nantes et son patrimoine
      Amateurs de course à pied, compétiteurs ou pratiquants occasionnels, le
      Marathon de Nantes vous donne rendez-vous les 29 et 30 avril 2017. Après
      une année 2016 record, le Marathon de Nantes et ses 3 épreuves annexes
      accueilleront pour la 37ème édition plus de 16000 coureurs de la France
      entière, une occasion unique de s’approprier la ville, sur des parcours
      100\% urbains. Et où chaque finisher en gardera un souvenir mémorable !\n
      Près de 4000 marathoniens viennent se confronter à la mythique distance
      de 42,195 km. De la Cathédrale à la Tour LU en passant par le Jardin des
      Plantes et le site des Machines de l’Ile, le parcours offre un décor
      incomparable. Les participants profitent des sites historiques et culturels
      de la ville, promesse d’une véritable visite touristique de Nantes !\n
      Pour rendre cette belle fête du running accessible au plus grand nombre,
      trois épreuves sont proposées en parallèle au Marathon. Les Foulées de
      l’éléphant by Decathlon « ouvrent le bal » et se tiennent de nouveau en
      nocturne le samedi 29 avril. Après une première édition remarquée, le
      semi-marathon by Sobhi Sport fait dorénavant partie du paysage de
      l’événement tout comme le Marathon Relais Groupama, réservé aux entreprises
      qui souhaitent fédérer leurs collaborateurs autour d’un challenge original.\n
      \n
      N’attendez plus, rejoignez le peloton !",
      location: "Nantes, France",
      date: Date.new(2017,4,30),
      price: 52,
      official_event_url: "http://www.marathondenantes.com/",
      trail_map_url: "https://www.google.com/maps/d/viewer?mid=1zPAnEnJcNxHw36lA5HhXd995r0E&ll=47.211292286413745%2C-1.5622180544098683&z=14",
      level: "expert",
      status: "open"
    },
    sports: {
      course_a_pied: 42.195
    },
    trail_map_picture: File.new(Rails.root.join("db/fixtures/images/marathon_de_nantes/map.jpg")),
    picture: File.new(Rails.root.join("db/fixtures/images/marathon_de_nantes/race.jpg"))
  }
  {
    # LES FOULÉES NOCTURNES DE L’ÉLÉPHANT BY DECATHLON
    # Course 10
    attributes: {
      name: "LES FOULÉES NOCTURNES DE L’ÉLÉPHANT",
      description:"Avec de nombreuses animations musicales sur le parcours et sur le site de départ/arrivée
      sous les Nefs des Machines, cette édition promet d’être une nouvelle fois sous le signe
      de la fête de la course à pied, une ambiance ahurissante à la lumière des projecteurs !\n
      Le parcours (10 kilomètres environ) est inchangé par rapport à l’an dernier sauf qu’il se fera
      dans l’autre sens. Très roulant et en bord de Loire, vous terminerez par un passage au pied
      des Anneaux de Buren illuminés\n",
      location: "Nantes, France",
      date: Date.new(2017,4,29),
      price: 15,
      trail_map_url: "https://www.marathondenantes.com/parcours-foulees/",
      official_event_url: "https://www.marathondenantes.com/foulees/",
      level: "débutant", # tu choisis manuellement
      status: "closed" # pareil
    },
    sports: {
      course_a_pied: 10,
    },
    trail_map_picture: File.new(Rails.root.join("db/fixtures/images/les_foulées_nantes/map.jpg")),
    picture: File.new(Rails.root.join("db/fixtures/images/les_foulées_nantes/race.jpg"))
  },
  {
    # LES DEFIS QUIBERONNAIS 2017
    # natation : 3km
    attributes: {
      name: "LES DEFIS QUIBERONNAIS",
      description: "Les DEFIS QUIBERONNAIS invitent ses participants à nager en totale liberté, \n
      au milieu de la nature authentique de la presqu'île de Quiberon, loin du monde, du béton et du bruit,\n
      sans aucun artifice, ni autre aide qu'une combinaison (pour les non licenciés FFN) et une paire de lunettes.
      L’esprit des épreuves est également de permettre à chacun de relever un défi sportif avec soi-même,\n
      sur des parcours différents à la difficulté progressive.
      Les parcours sont chronométrés avec classement général et par catégorie d’âge.",
      location: "Quiberon, France",
      date: Date.new(2017,7,29),
      price: 20,
      official_event_url: "https://www.quiberon-atlantique-natation.fr/les-defis-quiberonnais-2017/",
      trail_map_url: "https://www.quiberon-atlantique-natation.fr/s/img/emotionheader5803779902.jpg?1485531592.1180.767px",
      level: "intermédiaire",
      status: "open"
    },
    sports: {
      natation: 3
    },
    trail_map_picture: File.new(Rails.root.join("db/fixtures/images/defi_de_quiberon/map.jpg")),
    picture: File.new(Rails.root.join("db/fixtures/images/defi_de_quiberon/race.jpg"))
  }
]

races_attributes.each do |race_attributes|
  puts race_attributes[:attributes][:name]
  race = Race.new(race_attributes[:attributes])
  race.trail_map_picture = race_attributes[:trail_map_picture]
  race.picture = race_attributes[:picture]
  race.save


  sports = race_attributes[:sports]
  p sports

  sports_names_map = {
    course_a_pied: "Course à pied",
    cyclisme: "Cyclisme",
    natation: "Natation"
  }

  sports.each do |sport_name_key, distance|
    sport_name = sports_names_map[sport_name_key]

    sport = Sport.find_by_name(sport_name)
    puts "a RaceSport is created for the #{sport}"
    RaceSport.create(race: race, sport: sport, distance: distance)
  end

  race.calculate_total_distance!
  race.save
end

# # /////////////////////////////////////////////////////////////////////////////////////////////
# # ////////////////////////////////////////////////////////////////////////////////////////////
# # ///////////////////////////////////////////////////////////////////////////////////////////


# creation d'un racegroupe pour une course donne
# integration d'un user owner
# creation d'un GroupMembership
# ajout du owner du groupe + 3 user ramdom
# save
# fermeture


# # race_groups: user_id/race_id/status/token
race_groups_attributes = [
  {
    group_name: "Marathoniens de l'Enfer",
    race_name: "Marathon de Nantes"
  },
  {
    group_name: "Les Lorientais",
    race_name: "Triathlon de Lorient"
  },
  {
    group_name: "Les Medecins de Nantes",
    race_name: "Parcours du Semi-marathon de Nantes by Sobhi"
  }
]





race_groups_attributes.each do |race_group_attributes|
  random_group_size = rand(5) + 4
  group_users = User.order("RANDOM()").limit(random_group_size).to_a

  group_owner = group_users.pop

  race_group = RaceGroup.create(
    user: group_owner,
    name: race_group_attributes[:group_name],
    race: Race.find_by_name(race_group_attributes[:race_name]),
    token: SecureRandom.hex(8) #numero unique aléatoire
  )

  GroupMembership.create(
    user: group_owner,
    race_group: race_group
  )

  group_users.each do |group_user|
    GroupMembership.create(
      user: group_user,
      race_group: race_group
    )
  end
end

# name_race_group.each_with_index do |name, index|
#   jane = User.find_by_first_name("Jane")
#   race_group = RaceGroup.create(
#     user: jane,
#     race: Race.find_by_name("Marathon de Nantes"),
#     # status: ,
#     token: SecureRandom.hex(8) #numero unique aléatoire
#     )
#   3.times do
#     GroupMembership.create(
#       user: jane,
#       race_group: race_group
#       ),
#     user_random = User.order("RANDOM()").limit(1) unless user_random != jane
#     GroupMembership.create(
#       user: user_random,
#       race_group: race_group
#       )
#   end
# end

# name_race_group.each_with_index do |name, index|
#   charles = User.find_by_first_name("Charles")
#   race_group = RaceGroup.create(
#     user: charles,
#     race: Race.find_by_name("Triathlon de Lorient"),
#     # status: ,
#     token: SecureRandom.hex(8) #numero unique aléatoire
#     )
#   3.times do
#     GroupMembership.create(
#       user: charles,
#       race_group: race_group
#       ),
#     user_random = User.order("RANDOM()").limit(1) unless user_random != charles
#     GroupMembership.create(
#       user: user_random,
#       race_group: race_group
#       )
#   end
# end
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
