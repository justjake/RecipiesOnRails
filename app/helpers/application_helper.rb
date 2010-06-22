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
  
  def crumb( args = {} )
    opts = {:ul => "breadcrumb"}.merge( args )
    
    start = "<ul class=\"#{opts[:ul]} \" >
      <li class=\"#{opts[:li]}\"><a class=\"#{opts[:a]}\"href=\"/\">Home</a></li>
      "

    s = ""
    url = request.path.split('?')  #remove extra query string parameters
    levels = url[0].split('/') #break up url into different levels
    levels.each_with_index do |level, index|
      unless level.blank?
        if index == levels.size-1 || 
           (level == levels[levels.size-2] && levels[levels.size-1].to_i > 0)
          s += "<li class=\"#{opts[:li]}\">#{level.gsub(/_/, ' ')}</li>\n" unless level.to_i > 0
        else
            link = "/"
            i = 1
            while i <= index
              link += "#{levels[i]}/"
              i+=1
            end
            s += "<li class=\"#{opts[:li]}\"><a class=\"#{opts[:a]}\" href=\"#{link}\">#{level.gsub(/_/, ' ')}</a></li>\n"
        end
      end
    end
    fin = "</ul>"
    start + s + fin
  end
end
