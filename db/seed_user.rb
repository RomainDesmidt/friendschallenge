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
      level: user_levels.sample,
      medical_certificate: File.new(Rails.root.join("db/fixtures/images/certificat_medical/certificat_medical.png")),
      remote_profile_picture_url: "http://lorempixel.com/300/300/people/#{rand(40) + 1}/",
    },
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
      level: user_levels.sample,
      medical_certificate: File.new(Rails.root.join("db/fixtures/images/certificat_medical/certificat_medical.png")),
      remote_profile_picture_url: "http://lorempixel.com/300/300/people/#{rand(40) + 1}/",
    },
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
      level: user_levels.sample,
      medical_certificate: File.new(Rails.root.join("db/fixtures/images/certificat_medical/certificat_medical.png")),
      remote_profile_picture_url: "http://lorempixel.com/300/300/people/#{rand(40) + 1}/",
    },
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
      level: user_levels.sample,
      medical_certificate: File.new(Rails.root.join("db/fixtures/images/certificat_medical/certificat_medical.png")),
      remote_profile_picture_url: "http://lorempixel.com/300/300/people/#{rand(40) + 1}/",
    },
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
      level: user_levels.sample,
      medical_certificate: File.new(Rails.root.join("db/fixtures/images/certificat_medical/certificat_medical.png")),
      remote_profile_picture_url: "http://lorempixel.com/300/300/people/#{rand(40) + 1}/",
    },
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
      level: user_levels.sample,
      medical_certificate: File.new(Rails.root.join("db/fixtures/images/certificat_medical/certificat_medical.png")),
      remote_profile_picture_url: "http://lorempixel.com/300/300/people/#{rand(40) + 1}/",
    },
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
      level: user_levels.sample,
      medical_certificate: File.new(Rails.root.join("db/fixtures/images/certificat_medical/certificat_medical.png")),
      remote_profile_picture_url: "http://lorempixel.com/300/300/people/#{rand(40) + 1}/",
    },
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
      level: user_levels.sample,
      medical_certificate: File.new(Rails.root.join("db/fixtures/images/certificat_medical/certificat_medical.png")),
      remote_profile_picture_url: "http://lorempixel.com/300/300/people/#{rand(40) + 1}/",
    },
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
      level: user_levels.sample,
      medical_certificate: File.new(Rails.root.join("db/fixtures/images/certificat_medical/certificat_medical.png")),
      remote_profile_picture_url: "http://lorempixel.com/300/300/people/#{rand(40) + 1}/",
    },
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
      level: user_levels.sample,
      medical_certificate: File.new(Rails.root.join("db/fixtures/images/certificat_medical/certificat_medical.png")),
      remote_profile_picture_url: "http://lorempixel.com/300/300/people/#{rand(40) + 1}/",
    },
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
      level: user_levels.sample,
      medical_certificate: File.new(Rails.root.join("db/fixtures/images/certificat_medical/certificat_medical.png")),
      remote_profile_picture_url: "http://lorempixel.com/300/300/people/#{rand(40) + 1}/",
    },
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
      level: user_levels.sample,
      medical_certificate: File.new(Rails.root.join("db/fixtures/images/certificat_medical/certificat_medical.png")),
      remote_profile_picture_url: "http://lorempixel.com/300/300/people/#{rand(40) + 1}/",
    },
    sports_names: ["Natation", "Course à pied"]
  }
]
