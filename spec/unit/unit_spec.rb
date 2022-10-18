require 'rails_helper'

RSpec.describe Speaker, type: :model do
  subject do
    described_class.new(speakerID: 1, speakerName: "John Doe", speakerEmail: "johndoe@email.com", dateSpoke: 20221017, organizationName: "johndoe", speakerWebsite: "www.google.com")
  end

  it 'is valid with all valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a ID' do
    subject.speakerID = nil
    expect(subject).not_to be_valid
  end

  it 'is not valid without a name' do
    subject.speakerName = nil
    expect(subject).not_to be_valid
  end

  it 'is not valid without a email' do
    subject.speakerEmail = nil
    expect(subject).not_to be_valid
  end

  it 'is not valid without a dateSpoke' do
    subject.dateSpoke = nil
    expect(subject).not_to be_valid
  end

end

