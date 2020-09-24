RSpec.describe Api::V1::GameDataController, type: :request do
  let(:user) { create(:user) }
  let(:credentials) { user.create_new_auth_token }
  let(:headers) { { HTTP_ACCEPT: "application/json" }.merge!(credentials) }

  describe "POST /api/v1/game_data" do
    before do
      post "/api/v1/game_data",
           params: {
             game_data: {
               data: { message: "Wins" },
             },
           },
           headers: headers
    end

    it "returns a 200 response status" do
      expect(response).to have_http_status 200
    end

    it "successfully creates a data entry" do
      entry = GameData.last
      expect(entry.data).to eq "message" => "Wins"
    end
  end
  describe "GET /api/v1/game_data" do
    let!(:existing_entries) do
      4.times do
        create(:game_data,
               data: { message: "Wins" },
               user: user)
      end
    end

    before do
      get "/api/v1/game_data", headers: headers
    end

    it "returns a 200 response status" do
      expect(response).to have_http_status 200
    end

    it "returns a collection of performance data" do
      expect(response_json["entries"].count).to eq 4
    end
  end
end
