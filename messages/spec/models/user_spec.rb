require 'spec_helper'

describe User do

  describe "#send_message" do

    context "when the user is under their subscription limit" do
      it "sends a message to another user" do
        zach = User.create!
        david = User.create!
        msg = zach.send_message(
          :title => "Book Update",
          :text => "Beta 11 includes great stuff!",
          :recipient => david
          )
        david.received_messages.should == [msg]
      end

      it "creates a new message with the submitted attributes" do
        zach = User.create!
        david = User.create!
        msg = zach.send_message(
          :title => "Book Update",
          :text => "Beta 11 includes great stuff!",
          :recipient => david
          )
        msg.title.should == "Book Update"
        msg.text.should == "Beta 11 includes great stuff!"
      end

      it "adds the message to the sender's sent messages"do
        zach = User.create!
        david = User.create!
        msg = zach.send_message(
          :title => "Book Update",
          :text => "Beta 11 includes great stuff!",
          :recipient => david
          )
        zach.sent_messages.should == [msg]
      end

    end

  end

end
