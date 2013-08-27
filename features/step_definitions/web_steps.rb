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
	assert page.has_content?(text)
end

Then(/^I should be on the project page for "(.*?)"$/) do |project|
	assert page.has_title?(project + " - Projects - Ticketee")
end

