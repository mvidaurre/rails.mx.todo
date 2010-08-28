Given /^the following lists:$/ do |lists|
  List.create!(lists.hashes)
end

When /^I delete the (\d+)(?:st|nd|rd|th) list$/ do |pos|
  visit lists_path
  within("table tr:nth-child(#{pos.to_i+1})") do
    click_link "Destroy"
  end
end

Then /^I should see the following lists:$/ do |expected_lists_table|
  expected_lists_table.diff!(tableish('table tr', 'td,th'))
end
