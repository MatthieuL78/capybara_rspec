require 'rails_helper.rb'

feature 'Creating book' do
  scenario 'can create a book' do
  	# 1. go to root where will be button to add New Book :
  	visit '/'
  	# 2. click on Add New Book button
  	click_link 'Add New Book'
  	# 3. fiil form - add title
  	fill_in 'book_title', with: 'Ulysse'
  	# 4. click on submit form button
  	click_button 'Save Book'
  	# 5. then we should be redirected to show page with book details (book title)
  	expect(page).to have_content('Ulysse')
  end
end