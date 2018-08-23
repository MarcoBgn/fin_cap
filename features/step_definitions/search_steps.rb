When('I search the query {string} on top bar') do |query|
  home_page.top_search_box.input.set(query)
  home_page.top_search_box.submit.click
end

When('I search the query {string} on bottom bar') do |query|
  home_page.bottom_search_box.input.set(query)
  home_page.bottom_search_box.submit.click
end

Then('I should see the search results') do |table|
  step %(I should be on the search results page)

  table.rows.each do |row|
    expect(page).to have_content(row[0])
  end
end

Then('I should be on the search results page') do
  expect(page.current_path).to eq('/en/search')
end

