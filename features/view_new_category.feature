Feature: Manipulate Categories
  As a blog administrator
  In order to create new categories
  I want to be able to view the new categories page

  Background:
    Given the blog is set up
		
	Scenario: View new category page
		Given I am logged into the admin panel
		And I am on the admin page	
		When I follow "Categories:"
		Then I should see "Name"
		And I should see "Keywords"
		And I should see "Permalink"
		And I should see "Description"

	Scenario: Create new category
		Given I am logged into the admin panel
		And I am on the admin page	
		When I follow "Categories:"
		And I fill in "Name" with "Capringle"
		And I fill in "Keywords" with "jutse"
		And I fill in "Description" with "ai ai ai"
		And I press "Save"
		Then I should see "Category was successfully saved."

	Scenario: Edit existing category
		Given I am logged into the admin panel
		And I am on the edit "cat1" page
		When I fill in "Description" with "cennas enooormes"
		And I press "Save"
		Then I should see "cat1"
		And I should see "aaaaaaaa"
		And I should see "cennas enooormes"
