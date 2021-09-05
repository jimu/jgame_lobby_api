require 'rails_helper'

RSpec.describe User, type: :model do
  it "Has a name" do
    u = User.create name: "Able"
    expect(u.name).to eq "Able"
  end
end
