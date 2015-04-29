require 'rails_helper'

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

RSpec.describe RewardCategoriesController, type: :controller do

  # This should return the minimal set of attributes required to create a valid
  # RewardCategory. As you add validations to RewardCategory, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # RewardCategoriesController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET #index" do
    it "assigns all reward_categories as @reward_categories" do
      reward_category = RewardCategory.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:reward_categories)).to eq([reward_category])
    end
  end

  describe "GET #show" do
    it "assigns the requested reward_category as @reward_category" do
      reward_category = RewardCategory.create! valid_attributes
      get :show, {:id => reward_category.to_param}, valid_session
      expect(assigns(:reward_category)).to eq(reward_category)
    end
  end

  describe "GET #new" do
    it "assigns a new reward_category as @reward_category" do
      get :new, {}, valid_session
      expect(assigns(:reward_category)).to be_a_new(RewardCategory)
    end
  end

  describe "GET #edit" do
    it "assigns the requested reward_category as @reward_category" do
      reward_category = RewardCategory.create! valid_attributes
      get :edit, {:id => reward_category.to_param}, valid_session
      expect(assigns(:reward_category)).to eq(reward_category)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new RewardCategory" do
        expect {
          post :create, {:reward_category => valid_attributes}, valid_session
        }.to change(RewardCategory, :count).by(1)
      end

      it "assigns a newly created reward_category as @reward_category" do
        post :create, {:reward_category => valid_attributes}, valid_session
        expect(assigns(:reward_category)).to be_a(RewardCategory)
        expect(assigns(:reward_category)).to be_persisted
      end

      it "redirects to the created reward_category" do
        post :create, {:reward_category => valid_attributes}, valid_session
        expect(response).to redirect_to(RewardCategory.last)
      end
    end

    context "with invalid params" do
      it "assigns a newly created but unsaved reward_category as @reward_category" do
        post :create, {:reward_category => invalid_attributes}, valid_session
        expect(assigns(:reward_category)).to be_a_new(RewardCategory)
      end

      it "re-renders the 'new' template" do
        post :create, {:reward_category => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested reward_category" do
        reward_category = RewardCategory.create! valid_attributes
        put :update, {:id => reward_category.to_param, :reward_category => new_attributes}, valid_session
        reward_category.reload
        skip("Add assertions for updated state")
      end

      it "assigns the requested reward_category as @reward_category" do
        reward_category = RewardCategory.create! valid_attributes
        put :update, {:id => reward_category.to_param, :reward_category => valid_attributes}, valid_session
        expect(assigns(:reward_category)).to eq(reward_category)
      end

      it "redirects to the reward_category" do
        reward_category = RewardCategory.create! valid_attributes
        put :update, {:id => reward_category.to_param, :reward_category => valid_attributes}, valid_session
        expect(response).to redirect_to(reward_category)
      end
    end

    context "with invalid params" do
      it "assigns the reward_category as @reward_category" do
        reward_category = RewardCategory.create! valid_attributes
        put :update, {:id => reward_category.to_param, :reward_category => invalid_attributes}, valid_session
        expect(assigns(:reward_category)).to eq(reward_category)
      end

      it "re-renders the 'edit' template" do
        reward_category = RewardCategory.create! valid_attributes
        put :update, {:id => reward_category.to_param, :reward_category => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested reward_category" do
      reward_category = RewardCategory.create! valid_attributes
      expect {
        delete :destroy, {:id => reward_category.to_param}, valid_session
      }.to change(RewardCategory, :count).by(-1)
    end

    it "redirects to the reward_categories list" do
      reward_category = RewardCategory.create! valid_attributes
      delete :destroy, {:id => reward_category.to_param}, valid_session
      expect(response).to redirect_to(reward_categories_url)
    end
  end

end
