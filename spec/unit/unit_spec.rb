require 'rails_helper'

RSpec.describe CurrMember, type: :model do
  subject do
    described_class.new(studentID: 1, name: "John Doe", email: "johndoe@email.com")
  end

  it 'is valid with all valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a studentID' do
    subject.studentID = nil
    expect(subject).not_to be_valid
  end

  it 'is not valid without a name' do
    subject.name = nil
    expect(subject).not_to be_valid
  end

  it 'is not valid without a email' do
    subject.email = nil
    expect(subject).not_to be_valid
  end
end

RSpec.describe Alumni, type: :model do
    subject do
      described_class.new(alumniID: 1, name: 'Wade Wilson', email: "wadewilson@email.com", organizationID: 20)
    end
  
    it 'is valid with all valid attributes' do
      expect(subject).to be_valid
    end
  
    it 'is not valid without a alumniID' do
      subject.alumniID = nil
      expect(subject).not_to be_valid
    end
  
    it 'is not valid without a name' do
      subject.name = nil
      expect(subject).not_to be_valid
    end
  
    it 'is not valid without a email' do
      subject.email = nil
      expect(subject).not_to be_valid
    end

    it 'is not valid without a organizationID' do
        subject.organizationID = nil
        expect(subject).not_to be_valid
    end
  end

  RSpec.describe Administrator, type: :model do
    subject do
      described_class.new(adminID: 1, name: 'George Jetson', email: "gjetson@email.com", role: "Vice President")
    end
  
    it 'is valid with all valid attributes' do
      expect(subject).to be_valid
    end
  
    it 'is not valid without a adminID' do
      subject.adminID = nil
      expect(subject).not_to be_valid
    end
  
    it 'is not valid without a name' do
      subject.name = nil
      expect(subject).not_to be_valid
    end
  
    it 'is not valid without a email' do
      subject.email = nil
      expect(subject).not_to be_valid
    end

    it 'is not valid without a role' do
        subject.role = nil
        expect(subject).not_to be_valid
    end
  end

  RSpec.describe Speaker, type: :model do
    subject do
      described_class.new(speakerID: 1, speakerName: 'Fred Flintstone', email: "fflintstone@slate.com", organizationID: 12)
    end
  
    it 'is valid with all valid attributes' do
      expect(subject).to be_valid
    end
  
    it 'is not valid without a speakerID' do
      subject.speakerID = nil
      expect(subject).not_to be_valid
    end
  
    it 'is not valid without a name' do
      subject.speakerName = nil
      expect(subject).not_to be_valid
    end
  
    it 'is not valid without a email' do
      subject.email = nil
      expect(subject).not_to be_valid
    end

    it 'is not valid without a organizationID' do
        subject.organizationID = nil
        expect(subject).not_to be_valid
    end
  end

  RSpec.describe Organization, type: :model do
    subject do
      described_class.new(organizationID: 3, orgName: 'Stark Industries', email: 'tstark@starkindustries.org')
    end
  
    it 'is valid with all valid attributes' do
      expect(subject).to be_valid
    end
  
    it 'is not valid without a organizationID' do
      subject.organizationID = nil
      expect(subject).not_to be_valid
    end
  
    it 'is not valid without a name' do
      subject.orgName = nil
      expect(subject).not_to be_valid
    end
  
    it 'is not valid without a email' do
      subject.email = nil
      expect(subject).not_to be_valid
    end
  end