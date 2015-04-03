require 'rails_helper'

describe 'User Requests' do
  before (:all) do
    User.destroy_all
     @user1 = User.create(name: 'Kelly', username: 'RubyQueen1', password: '123')
     @user2 = User.create(name: 'Matt', username: 'Matt1', password: '1234')
     @user3 = User.create(name: 'Jodi', username: 'Jodi1', password: '12345')
  end

  describe '#index' do
    it 'gets all of the users' do
      get "/users"
      expect(response).to be_success
      user = JSON.parse(response.body)
      expect(user['users'].length).to eq 3
    end
  end

  describe '#create' do
    it 'should create a new user' do
    post "/users",
    { user: {
      name: "Kelly", username: 'RubyQueen1', password: '123'
      } }.to_json,
      { 'Accept' => Mime::JSON, 'Content-Type' => Mime::JSON.to_s }
      expect(response).to be_success
      expect(response.content_type).to be Mime::JSON
      end
    end

    describe '#show' do
      it 'should retrive a single user and what flashcards and resources they have' do
      @user = @user.first
      get "/users/#{@user.id}"
      expect(response).to be_success

      user = JSON.parse(response.body)
      expect(user['user']['username']).to eq @user.username
    end
  end

  describe '#update' do
    it 'should update the users information' do
      @user = @user.second
      put "/users/#{@user.id}",
      { user: {
          name: "Matty",
          token: "insert_token_here"
      } }.to_json,
      { 'Accept' => Mime::JSON, 'Content-Type' => Mime::JSON.to_s }
      except(response).to be_success
      expect(response.content_type).to be Mime::JSON
    end
  end

end

