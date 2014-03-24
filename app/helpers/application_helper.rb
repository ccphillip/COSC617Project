module ApplicationHelper

 def full_title(page_title)
    base_title = "Healthy Life"
    if page_title.empty?
      base_title
    else
      "#{base_title} | #{page_title}"
    end
  end
  
  def logo
    image_tag("logo.png", :alt => "Healthy Life", :class => "round")
  end
end
