Given(/^(?:|I )am on (.+)$/) do |page_name|
	visit path_to(page_name)
end

When(/^I follow "(.*?)"$/) do |link_name|
	click_link link_name
end

When(/^I fill in "(.*?)" with "(.*?)"$/) do |field, data|
	fill_in field, :with => data
end

When(/^I press "(.*?)"$/) do |button|
	click_button button
end

Then(/^I should see "(.*?)"$/) do |text|
	if (text =~ /" within "/)
		matches = text.split /" within "/
		text = matches[0]
		puts text
		within = matches[1]
		puts within
	end

	assert page.has_content?(text), "#{text} was not found"
end

Then(/^I should be on the project page for "(.*?)"$/) do |project|
	assert page.has_title?(project + " - Projects - Ticketee")
end

Then(/^I should not see "(.*?)"$/) do |text|
	assert !page.has_content?(text)
end
