Setup the app:

	./setup.sh

Seed the db in rails console:

	4.times do |i|
		Fundraiser.create(:name => "Fundraiser#{i}", :description => "Description #{i}")
	end
	
Start the server: 
	
	rails s

Create a user:
	
	curl --data "email=test@test.com&password=password" localhost:3000/users
	
Take the session_token returned and send it along as params to the API call:

	curl --data "session_token=<SESSION_TOKEN>" localhost:3000/fundraisers
	
or Sign-in as an existing user:

	curl --data "email=test@test.com&password=password" localhost:3000/signin
	
and request the fundraiser with your returned session_token:

	curl --data "session_token=<SESSION_TOKEN>" localhost:3000/fundraisers
	
