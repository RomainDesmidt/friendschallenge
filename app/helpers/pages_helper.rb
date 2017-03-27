module PagesHelper
  def linear_background_for(sport)
    case sport.name
    when "Cyclisme" then "rgba(244,218,19,0.6)"
    when "Course à pied" then "rgba(26,140,51,0.6)"
    when "Natation" then "rgba(25,52,127,0.4)"
    else
      "rgba(230,230,230,1)"
    end
  end

  def picture_path_for(sport)
    case sport.name
    when "Cyclisme" then "bike.jpg"
    when "Course à pied" then "run.jpg"
    when "Natation" then "swim.jpg"
    else
      "draft-logo.png"
    end
  end

  def placeholder_for(sport)
    case sport.name
    when "Cyclisme" then "JE PÉDALE"
    when "Course à pied" then "JE COURS"
    when "Natation" then "JE NAGE"
    else
      "Je fais rien"
    end
  end
end
