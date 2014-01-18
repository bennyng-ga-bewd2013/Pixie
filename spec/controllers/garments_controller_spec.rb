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

describe GarmentsController do
  login_as_admin
  # This should return the minimal set of attributes required to create a valid
  # Garment. As you add validations to Garment, be sure to
  # adjust the attributes here as well.
  #let(:valid_attributes) { { "style" => "MyString"} } outter {} = let, valid attributes = block { "style" => "MyString"}
  #basically what is being done here is declaring valid_attributes as hash of { "style"...}

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # GarmentsController. Be sure to keep this updated too.
  #let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all garments as @garments" do
      garment = FactoryGirl.create(:garment, admin: @admin)
      get :index
      assigns(:garments).should eq([garment])
    end
  end

  describe "GET show" do
    it "assigns the requested garment as @garment" do
      garment = FactoryGirl.create(:garment, admin: @admin)
      puts garment.to_param
      get :show, {:id => garment.to_param}
      assigns(:garment).should eq(garment)
    end
  end

  describe "GET new" do
    it "assigns a new garment as @garment" do
      get :new, {}
      assigns(:garment).should be_a_new(Garment)
    end
  end

  describe "GET edit" do
    it "assigns the requested garment as @garment" do
      garment = FactoryGirl.create(:garment, admin: @admin)
      get :edit, {:id => garment.to_param}
      assigns(:garment).should eq(garment)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Garment" do
        data = {
          garment: { #garment is the key in this hash pair and the hash {style...} are the value (***nested hash is just another key:value pair, hash can be a value too)
            style: "MyString",
            period: "MyString",
            genre: "MyString",
            material: "MyString",
            available_size: "MyString",
            quantity: 1,
            price: "9.99",
            description: "MyText"
          }
        }
        expect {
          post :create, data
        }.to change(Garment, :count).by(1)
      end
    end
  end

      it "assigns a newly created garment as @garment" do
        data = {
          garment: { #garment is the key in this hash pair and the hash {style...} are the value (***nested hash is just another key:value pair, hash can be a value too)
            style: "MyString",
            period: "MyString",
            genre: "MyString",
            material: "MyString",
            available_size: "MyString",
            quantity: 1,
            price: "9.99",
            description: "MyText"
          }
        }
        post :create, data
        assigns(:garment).should be_a(Garment) #check class garment
        assigns(:garment).should be_persisted #???
      end

      it "redirects to the created garment" do
        data = {
          garment: { #garment is the key in this hash pair and the hash {style...} are the value (***nested hash is just another key:value pair, hash can be a value too)
            style: "MyString",
            period: "MyString",
            genre: "MyString",
            material: "MyString",
            available_size: "MyString",
            quantity: 1,
            price: "9.99",
            description: "MyText"
          }
        }
        post :create, data
        response.should redirect_to(Garment.last)
      end
    

    describe "with invalid params" do
      it "assigns a newly created but unsaved garment as @garment" do
        # Trigger the behavior that occurs when invalid params are submitted
        Garment.any_instance.stub(:save).and_return(false) #.stub =hijack function, return false mean didn't save. Important stuff.
        post :create, {
          garment: { #garment is the key in this hash pair and the hash {style...} are the value (***nested hash is just another key:value pair, hash can be a value too)
            style: 1,
            period: "MyString",
            genre: "MyString",
            material: "MyString",
            available_size: "MyString",
            quantity: 1,
            price: "9.99",
            description: "MyText"
          }
        }
        assigns(:garment).should be_a_new(Garment)
      end
    end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Garment.any_instance.stub(:save).and_return(false)
        post :create, {
          garment: { #garment is the key in this hash pair and the hash {style...} are the value (***nested hash is just another key:value pair, hash can be a value too)
            style: 1,
            period: "MyString",
            genre: "MyString",
            material: "MyString",
            available_size: "MyString",
            quantity: 1,
            price: "9.99",
            description: "MyText"
          }
        }
        response.should render_template("new")
      end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested garment" do
        garment = FactoryGirl.create(:garment) #Garment.create! valid_attributes
        # Assuming there are no other garments in the database, this
        # specifies that the Garment created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.

        Garment.any_instance.should_receive(:update).with({ #make sure the update action is called with the parameter
            style: "2String"                                #Garment.any_instance.should_receive(function) => make sure function works
            })
        put :update, {:id => garment.to_param, :garment => { 
            style: "2String" }}
      end
    
  # *************************************
  # {
  #   id: 9,
  #   garment: {
  #     style: "zttz"
  #   }
  # }

      it "assigns the requested garment as @garment" do
        garment = FactoryGirl.create(:garment)
        put :update, {:id => garment.to_param, :garment => { #garment is the key in this hash pair and the hash {style...} are the value (***nested hash is just another key:value pair, hash can be a value too)
            style: "String",
            period: "MyString",
            genre: "MyString",
            material: "MyString",
            available_size: "MyString",
            quantity: 1,
            price: "9.99",
            description: "MyText"
          }}
        assigns(:garment).should eq(garment)
      end
    end
  end

      it "redirects to the garment" do
        garment = FactoryGirl.create(:garment)
        put :update, {:id => garment.to_param, :garment => { #garment is the key in this hash pair and the hash {style...} are the value (***nested hash is just another key:value pair, hash can be a value too)
            style: "String",
            period: "MyString",
            genre: "MyString",
            material: "MyString",
            available_size: "MyString",
            quantity: 1,
            price: "9.99",
            description: "MyText"
          }}
        response.should redirect_to(garment)
      end


  #   describe "with invalid params" do
  #     it "assigns the garment as @garment" do
  #       garment = Garment.create! valid_attributes
  #       # Trigger the behavior that occurs when invalid params are submitted
  #       Garment.any_instance.stub(:save).and_return(false)
  #       put :update, {:id => garment.to_param, :garment => { "style" => "invalid value" }}, valid_session
  #       assigns(:garment).should eq(garment)
  #     end

  #     it "re-renders the 'edit' template" do
  #       garment = Garment.create! valid_attributes
  #       # Trigger the behavior that occurs when invalid params are submitted
  #       Garment.any_instance.stub(:save).and_return(false)
  #       put :update, {:id => garment.to_param, :garment => { "style" => "invalid value" }}, valid_session
  #       response.should render_template("edit")
  #     end
  #   end
  # end

  describe "DELETE destroy" do
    it "destroys the requested garment" do
      garment = FactoryGirl.create(:garment)
      expect {
        delete :destroy, {:id => garment.to_param}
      }.to change(Garment, :count).by(-1)
    end
end
    it "redirects to the garments list" do
      garment = FactoryGirl.create(:garment)
      delete :destroy, {:id => garment.to_param}
      response.should redirect_to(garments_url)
    end
end
