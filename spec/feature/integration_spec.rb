# location: spec/feature/integration_spec.rb
require 'rails_helper'

RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid title inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in  'Author', with: 'JK'
    fill_in  'Price', with: '100'
    select '2022', :from =>'book_published_date_1i'
    select 'September', :from => 'book_published_date_2i'
    select '16', :from => 'book_published_date_3i'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('harry potter')
  end

  scenario 'valid title inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in  'Author', with: 'JK'
    fill_in  'Price', with: '100'
    select '2022', :from =>'book_published_date_1i'
    select 'September', :from => 'book_published_date_2i'
    select '16', :from => 'book_published_date_3i'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('JK')
  end

  scenario 'valid title inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in  'Author', with: 'JK'
    fill_in  'Price', with: '100'
    select '2022', :from =>'book_published_date_1i'
    select 'September', :from => 'book_published_date_2i'
    select '16', :from => 'book_published_date_3i'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('100')
  end

  scenario 'valid title inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in  'Author', with: 'JK'
    fill_in  'Price', with: '100'
    select '2022', :from =>'book_published_date_1i'
    select 'September', :from => 'book_published_date_2i'
    select '16', :from => 'book_published_date_3i'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('2022-09-16')
  end
end