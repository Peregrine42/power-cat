Feature: presentations

	Scenario: showing all the presentations
		Given there are some presentations in the database to be shown
		When I vist the home page
		Then I see the previously created presentations
