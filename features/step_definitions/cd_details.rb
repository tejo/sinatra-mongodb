Given /^the disc_id$/ do
end

When /^I view the cd "([^\"]*)"$/ do |disc_id|
  visit("/cds/#{disc_id}/view")
end

Then /^I should see a track named "([^\"]*)"$/ do |track|
  response.body.should have_selector("li", :content => track)
end
