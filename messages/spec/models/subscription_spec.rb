require 'spec_helper'

describe Subscription do
  describe "#can_send_message?" do
    context "when a user has not reached the subscription limit for the month" do
      it "returns true"
    end
    context "when a user has reached the subscription limit for the month" do
      it "returns false"
    end
  end
end
