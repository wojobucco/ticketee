module NavigationHelpers
 def path_to(page_name)
   case page_name
   when /home\s?page/
	 	'/'
	 when /the project page for "([^\"]*)"/
	 	project_path(Project.find_by_name!($1))
   else
     raise "can't find mapping from "#{page_name}" to a path. n" + "Now, go and add a mapping in #{__FILE__}" 
   end
 end
end

World(NavigationHelpers)
