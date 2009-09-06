Given /^the disc_id$/ do
  @disc_id = 1234567
  @artist  = 'Taddeo Marmi'
  @title   = 'China Town'
  @genre   = 'rock'
  @year    = 1970
  @tracks  = ['Bad reputation','Jhonny the fox']
  
  Cd.create({
    :disc_id => @disc_id,
    :artist => @artist,
    :title => @title,
    :genre => @genre,
    :year => @year,
    :tracks => @tracks
  })
  
end

When /^I view the cd "([^\"]*)"$/ do |disc_id|
  visit("/cds/#{disc_id}/view")
end

Then /^I should see a track named "([^\"]*)"$/ do |track|
  response.body.should have_selector("li", :content => track)
end
