# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  
  def appName( type = :normal )
    appname = {
      :long =>  "Recipes on Rails",
      :normal =>  "Recipes on Rails",
      :short => "Recipes",
      :abbr =>  "RoR"
    }
    return appname[ type ]
  end
  
  def title
    baseTitle = appName( :normal )
    if @title.nil?
      baseTitle
    else
      "#{baseTitle} | #{@title}"
    end
  end
  
end
