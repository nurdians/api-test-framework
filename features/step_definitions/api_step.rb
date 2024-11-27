require 'httparty'
require 'json'

Given('the API endpoint is {string}') do |url|
  @url = url
end

When('I send a GET request') do
  @response = HTTParty.get(@url)
end

Then('the response status should be {int}') do |status_code|
  expect(@response.code).to eq(status_code)
end

Then('the response should include {string}') do |key|
  json_response = JSON.parse(@response.body)
  expect(json_response.keys).to include(key)
end
