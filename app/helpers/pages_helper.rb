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

  def multi_linear_background_for(sports)
    gradients = ""
    level = 10

    sports.each do |sport|
      gradients += "#{linear_background_for(sport)} #{level}%, "
      level += (100 / sports.count)
    end

    "linear-gradient(-225deg, #{gradients} rgba(255, 255, 255, 0.5) 100%)"
  end

  # def linear_backgrounds_for(sports)
  #   colors = sports.map do |sport|
  #     linear_background_for(sport)
  #   end
  #   positions = [0, 50, 100]
  #   colors.map.with_index do |color, index|
  #     "#{colors}, "
  #   end
  # end

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
