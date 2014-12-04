module StadiumsHelper


def image_for(stadium)
  if stadium.image_file_name.blank?
    image_tag('baseball_stadium_icon.jpg')
  else
    image_tag(stadium.image_file_name)
  end
end


def format_average_stars(stadium)
	if stadium.average_stars.nil?
		 content_tag(:strong, 'No reviews')
  	else
    	 pluralize(number_with_precision(stadium.average_stars, precision: 1) , 'star')
  	end

end


end
