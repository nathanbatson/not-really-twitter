require 'spec_helper'

describe User do
  it "should be a valid user" do
    user = User.new(
      first_name: "Dave",
      last_name: "McLoser",
      location: "Loserville, KY",
      username: "totalloser",
      email: "total@loser.com"
    )

    expect(user.valid?).to eq(true)

  end

  it "email should be unique" do
    existing_user = User.create!(
      first_name: "Dave",
      last_name: "McLoser",
      location: "Loserville, KY",
      username: "totalloser",
      email: "total@loser.com"
    )

    user = User.new(
      first_name: "Gerald",
      last_name: "Awesome",
      location: "Asheville, KY",
      username: "gerladthegreat"
    )

    user.email = "total@loser.com"
    expect(user.valid?).to eq(false)
  end

  it "username should be unique" do
    existing_user = User.create!(
      first_name: "Dave",
      last_name: "McLoser",
      location: "Loserville, KY",
      username: "totalloser",
      email: "total@loser.com"
    )

    user = User.new(
      first_name: "Gerald",
      last_name: "Awesome",
      location: "Asheville, KY",
      email: "u@gmail.com"
    )

    user.username = "totalloser"
    expect(user.valid?).to eq(false)
  end
end
