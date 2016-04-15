require 'rails_helper'

feature 'reviewing' do
  before do
    sign_up
    create_restaurant
  end


  scenario 'allows users to leave a review using a form' do
     create_review

     expect(current_path).to eq '/restaurants'
     expect(page).to have_content('so so')
  end

  scenario 'can only leave one review per restaurant' do
    create_review
    create_review
    expect(page).to have_content 'You can only leave one review'
  end

end
