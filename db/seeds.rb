# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


# Per the docs, why not just use the DB seed to do the seeding rather than the console

4.times do |i|
    Fundraiser.create(:name => "Fundraiser#{i}", :description => "Description #{i}")
end

# This file is executed via `rake db:seed`
