require 'rails_helper'

RSpec.describe Book, type: :model do
  subject { described_class.new(title: 'Anything') }
  context 'When create a book' do
  	it 'is valid with valid attribute' do
  	  expect(subject.save).to be true
  	end
    it 'is not valid without valid attribute' do
      subject.title = nil
      expect(subject.save).to_not be true
    end
  end
end
