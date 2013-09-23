Given /^there is a project called "([^\"]*)"$/ do |name|
	#Project.create(name: name)
	myGirl = FactoryGirl.create(:project, name: name)
end
