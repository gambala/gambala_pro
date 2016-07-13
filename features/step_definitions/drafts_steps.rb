#
# Write here new steps
# Then group and move into separate files and modules
#

# route

When(/^я захожу на главную$/) do
  visit root_path
end

# content

Then(/^я вижу на ней приветствие$/) do
  assert page.has_content?('Здравствуй, дорогой гость')
end
