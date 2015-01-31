require 'rails_helper'  # keeps the file DRY so you don't have to refer back to rails_helper.rb

# RSpec.describe Post, :type => :model do
#   pending "add some examples to (or delete) #{__FILE__}"
# end

describe User do

  describe ".validates" do
    it "must have an email" do
      expect(User.new(email: nil)).to_not be_valid
    end
  end



end
