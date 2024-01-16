require "rails_helper"

describe Cmor::Translations::Translation, type: :model do
  describe "validations" do
    it { expect(subject).to validate_presence_of(:locale) }
    it { expect(subject).to validate_presence_of(:key) }
    it { expect(subject).to validate_uniqueness_of(:key).scoped_to(:locale) }
    it { expect(subject).to respond_to(:human) }
  end
end
