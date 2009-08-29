Given /^a "The Rhythm Method" cd$/ do
end

When /^I view the cd _id$/ do
  visit("/cds/0000063e03aaa7f0c9b6e94a00cd4e7c")
end

Then /^the title should include "The Rhythm Method"$/ do
  response.body.should have_selector("h1", :content => "The Rhythm Method")
end