require 'spec_helper'

describe Tweet do
 it "should have a body" do
  tweet = Tweet.new(user_id: 1, body: "Hey everybody what's going on up in here yall.")

  expect(tweet.body).to eq("Hey everybody what's going on up in here yall.")
  expect(tweet.user_id).to eq(1)
  expect(tweet.valid?).to eq(true)
 end
end
