require 'rails_helper'

describe 'search', type: :feature do
  
  it 'returns nothing when query is empty' do
    Job.create!(title: 'Senior', user: User.new)
    visit '/search?query='
    expect(page.html).to include('No jobs found!')
  end

  it 'finds a result' do
    Job.create!(title: 'Senior', user: User.new)
    visit '/search?query=Senior'
    expect(page.html).to include('Senior')
  end

  it 'finds a result' do
    Job.create!(title: 'Junior', user: User.new)
    visit '/search?query=Junior'
    expect(page.html).to include('Junior')
  end

  it 'finds no results' do
    Job.delete_all
    visit '/search?query=Junior'
    expect(page.html).to_not include('Junior')
  end

  it 'finds results by location' do
    Job.delete_all
    Job.create!(location: 'London', user: User.new)
    visit '/search?query=London'
    expect(page.html).to include('London')
  end
end