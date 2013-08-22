
And /I am logged as a user$/ do
  visit '/accounts/login'
  fill_in 'user_login', :with => 'quim'
  fill_in 'user_password', :with => 'aaaaaaaa'
  click_button 'Login'
  if page.respond_to? :should
    page.should have_content('Login successful')
  else
    assert page.has_content?('Login successful')
  end
end

And /I have created and article with title "(.*)" and body "(.*)"$/ do |title, body|
	step "I am on the new article page"
  step "I fill in \"article_title\" with \""+ title +"\""
  step "I fill in \"article__body_and_extended_editor\" with \""+ body +"\""
  step "I press \"Publish\""
end


Then /I should see the merge form/ do
	page.all("#merge_with").should be_present
end

Then /I should not see the merge form/ do
	page.all("#merge_with").should be_blank
end


Then /article (\d) should be merged with article (\d)/ do |id1, id2|

end
