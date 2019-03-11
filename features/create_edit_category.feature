Feature: Create or Edit category
	As a blog administrator
	In order to categorize my blogs
	I want to create category for my articles

	Background:
		Given the blog is set up
		And I am logged into the admin panel

		Given the following categories exist:
		| name        | keywords | permalink     | description |
		| Personal        |  |     | |


	Scenario: Create category for articles
		Given I am on the categories page
		When I fill in "Name" with "Custom"
		And I press "Save"
		Then I should be on the categories page
		And I should see "Custom"

	Scenario: Edit existing category
		Given I am on the categories page
		And I follow "Personal"
		And I fill in "Name" with "Work"
		And I press "Save"
		Then I should be on the categories page
		And I should see "Work"
		And I should not see "Personal"
