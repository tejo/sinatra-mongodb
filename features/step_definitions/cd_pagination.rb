Given /^that I am on page 1$/ do
end

When /^I view the page "([^\"]*)"$/ do |page|
  visit("/cds/#{page}")
end


Then /^the "([^\"]*)" cd should be included in the list$/ do |title|
  response.body.should have_selector("h3", :content => title)
end




