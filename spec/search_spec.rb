require 'rails_helper'

describe Search do
  before do
    Job.delete_all
    User.delete_all
  end

  it 'finds no result' do
    result = subject.execute(query: 'whatever')
    expect(result).to be_empty
  end

  it 'finds one result' do 
    expected_result = Job.create!(title: 'Senior', user: User.new)

    result = subject.execute(query: 'Senior')
    expect(result).to eq([expected_result])
  end

  it 'finds many results' do 
    result1 = Job.create!(title: 'Senior Engineer', user: User.new)
    result2 = Job.create!(title: 'Senior', user: User.new)

    result = subject.execute(query: 'Senior')
    expect(result).to eq([result1, result2])
  end

  it 'finds result with a partial match' do
    expected_result = Job.create!(title: 'Senior Engineer', user: User.new)

    result = subject.execute(query: 'Senior')
    expect(result).to eq([expected_result])
  end

  it 'does not do a partial match on location' do
    expected_result = Job.create!(location: 'Japan', user: User.new)

    result = subject.execute(query: 'Ja')
    expect(result).to be_empty
  end
end
