Feature: Merge Articles
  As a blog administrator
  In order to facilitate the content search
  I want to be able to merge articles in my blog

  Background:
    Given the blog is set up
		
	Scenario: Article page as a admin
		Given I am logged into the admin panel
		And I am on the admin page	
		When I follow "Your posts:"
		And I follow "Edit"
		Then I should see the merge form
		
	Scenario: Article page as a non-admin
		Given I am logged as a user
		And I have created and article with title "Hello" and body "Made by Quim"
		And I am on the admin page
		When I follow "Your posts:"
		And I follow "Edit"
		Then I should not see the merge form

	Scenario: merge two articles	
		Given I am logged into the admin panel
		And I am on the article id 1 page 
		When I fill in "merge_with" with "3"
    And I press "Merge"
		Then article 1 should be merged with article 3
