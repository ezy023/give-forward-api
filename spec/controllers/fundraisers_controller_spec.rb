require 'spec_helper'

describe "FundraisersControler" do
  describe "#index" do
    before do
      @first_fundraiser = Fundraiser.create(:name => "Fundraiser1", :description => "This is the first one")
      @second_fundraiser = Fundraiser.create(:name => "Fundraiser2", :description => "This is the second one")
    end

    it "returns all of the fundraiser objects as json" do
      get :index
      fundraiser_json = JSON.parse(response.body)

      expect(fundraiser_json).to eq(
        {'fundraiser' => [ fundraiser_as_json(@first_fundraiser),
                           fundraiser_as_json(@second_fundraiser)]
        })
    end

  end
end

def fundraiser_as_json(fundraiser)
    {
      'name' => fundraiser.name,
      'description' => fundraiser.description
    }
end
