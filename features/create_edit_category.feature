Feature: Create or Edit category
	As a blog administrator
	In order to categorize my blogs
	I want to create category for my articles

	Background:
		Given the blog is set up
		And I am logged into the admin panel

	Scenario: Create category for articles
		Given I am on the categories page
		When I fill in "Name" with "Personal"
		And I fill in "Description" with "every day life"
		And I press "Save"
		Then I should be on the admin content page
		When I go to the new article page
		Then I should see "Personal"

	Scenario: Edit existing category
		Given I am on the categories page
		Then I should see "Personal"
		And I press "Personal"
		Then I should see "every day life"
		And I fill in "Nmae" with "Work"
		And I fill in "Description" with "work life"
		And I press "Save"
		Then I should be on the admin content page
		When I go to the new article page
		Then I should not see "Personal"
		Then I should see "Work"


