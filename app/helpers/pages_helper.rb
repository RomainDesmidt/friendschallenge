module PagesHelper
  def linear_background_for(sport)
    case sport.name
    when "Course à pied" then "rgba(253,231,76,0.9)"
    when "Cyclisme" then "rgba(239,62,54,0.6)"
    when "Natation" then "rgba(0,107,166,0.6)"
    else
      "rgba(230,230,230,1)"
    end
  end

  def multi_linear_background_for(sports)
    gradients = ""
    level = 00

    sport_priority = {
      "Course à pied" => 1,
      "Cyclisme" => 2,
      "Natation" => 3
    }

    sorted_sports = sports.sort_by { |sport| sport_priority[sport.name] || 500 }

    sorted_sports.each do |sport|
      gradients += "#{linear_background_for(sport)} #{level}%, "
      level += (100 / sports.count)
    end

    "linear-gradient(0deg, #{gradients} rgba(255,255,255,0) 100%)"
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


  # def icon_for(sport)
  #   case sport.name
  #   when "Cyclisme" then "sport_icons/cycling.png"
  #   when "Course à pied" then "running.png"
  #   when "Natation" then "swimming.png"
  #   else
  #     "draft-logo.png"
  #   end

  # end
# end
