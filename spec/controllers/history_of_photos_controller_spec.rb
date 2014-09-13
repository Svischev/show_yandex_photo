require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe HistoryOfPhotosController do

  # This should return the minimal set of attributes required to create a valid
  # HistoryOfPhoto. As you add validations to HistoryOfPhoto, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "title" => "MyString" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # HistoryOfPhotosController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all history_of_photos as @history_of_photos" do
      history_of_photo = HistoryOfPhoto.create! valid_attributes
      get :index, {}, valid_session
      assigns(:history_of_photos).should eq([history_of_photo])
    end
  end

  describe "GET show" do
    it "assigns the requested history_of_photo as @history_of_photo" do
      history_of_photo = HistoryOfPhoto.create! valid_attributes
      get :show, {:id => history_of_photo.to_param}, valid_session
      assigns(:history_of_photo).should eq(history_of_photo)
    end
  end

  describe "GET new" do
    it "assigns a new history_of_photo as @history_of_photo" do
      get :new, {}, valid_session
      assigns(:history_of_photo).should be_a_new(HistoryOfPhoto)
    end
  end

  describe "GET edit" do
    it "assigns the requested history_of_photo as @history_of_photo" do
      history_of_photo = HistoryOfPhoto.create! valid_attributes
      get :edit, {:id => history_of_photo.to_param}, valid_session
      assigns(:history_of_photo).should eq(history_of_photo)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new HistoryOfPhoto" do
        expect {
          post :create, {:history_of_photo => valid_attributes}, valid_session
        }.to change(HistoryOfPhoto, :count).by(1)
      end

      it "assigns a newly created history_of_photo as @history_of_photo" do
        post :create, {:history_of_photo => valid_attributes}, valid_session
        assigns(:history_of_photo).should be_a(HistoryOfPhoto)
        assigns(:history_of_photo).should be_persisted
      end

      it "redirects to the created history_of_photo" do
        post :create, {:history_of_photo => valid_attributes}, valid_session
        response.should redirect_to(HistoryOfPhoto.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved history_of_photo as @history_of_photo" do
        # Trigger the behavior that occurs when invalid params are submitted
        HistoryOfPhoto.any_instance.stub(:save).and_return(false)
        post :create, {:history_of_photo => { "title" => "invalid value" }}, valid_session
        assigns(:history_of_photo).should be_a_new(HistoryOfPhoto)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        HistoryOfPhoto.any_instance.stub(:save).and_return(false)
        post :create, {:history_of_photo => { "title" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested history_of_photo" do
        history_of_photo = HistoryOfPhoto.create! valid_attributes
        # Assuming there are no other history_of_photos in the database, this
        # specifies that the HistoryOfPhoto created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        HistoryOfPhoto.any_instance.should_receive(:update).with({ "title" => "MyString" })
        put :update, {:id => history_of_photo.to_param, :history_of_photo => { "title" => "MyString" }}, valid_session
      end

      it "assigns the requested history_of_photo as @history_of_photo" do
        history_of_photo = HistoryOfPhoto.create! valid_attributes
        put :update, {:id => history_of_photo.to_param, :history_of_photo => valid_attributes}, valid_session
        assigns(:history_of_photo).should eq(history_of_photo)
      end

      it "redirects to the history_of_photo" do
        history_of_photo = HistoryOfPhoto.create! valid_attributes
        put :update, {:id => history_of_photo.to_param, :history_of_photo => valid_attributes}, valid_session
        response.should redirect_to(history_of_photo)
      end
    end

    describe "with invalid params" do
      it "assigns the history_of_photo as @history_of_photo" do
        history_of_photo = HistoryOfPhoto.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        HistoryOfPhoto.any_instance.stub(:save).and_return(false)
        put :update, {:id => history_of_photo.to_param, :history_of_photo => { "title" => "invalid value" }}, valid_session
        assigns(:history_of_photo).should eq(history_of_photo)
      end

      it "re-renders the 'edit' template" do
        history_of_photo = HistoryOfPhoto.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        HistoryOfPhoto.any_instance.stub(:save).and_return(false)
        put :update, {:id => history_of_photo.to_param, :history_of_photo => { "title" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested history_of_photo" do
      history_of_photo = HistoryOfPhoto.create! valid_attributes
      expect {
        delete :destroy, {:id => history_of_photo.to_param}, valid_session
      }.to change(HistoryOfPhoto, :count).by(-1)
    end

    it "redirects to the history_of_photos list" do
      history_of_photo = HistoryOfPhoto.create! valid_attributes
      delete :destroy, {:id => history_of_photo.to_param}, valid_session
      response.should redirect_to(history_of_photos_url)
    end
  end

end