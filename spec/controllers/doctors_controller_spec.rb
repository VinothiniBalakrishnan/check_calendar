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

describe DoctorsController do

  # This should return the minimal set of attributes required to create a valid
  # Doctor. As you add validations to Doctor, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "full_name" => "MyString" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # DoctorsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all doctors as @doctors" do
      doctor = Doctor.create! valid_attributes
      get :index, {}, valid_session
      assigns(:doctors).should eq([doctor])
    end
  end

  describe "GET show" do
    it "assigns the requested doctor as @doctor" do
      doctor = Doctor.create! valid_attributes
      get :show, {:id => doctor.to_param}, valid_session
      assigns(:doctor).should eq(doctor)
    end
  end

  describe "GET new" do
    it "assigns a new doctor as @doctor" do
      get :new, {}, valid_session
      assigns(:doctor).should be_a_new(Doctor)
    end
  end

  describe "GET edit" do
    it "assigns the requested doctor as @doctor" do
      doctor = Doctor.create! valid_attributes
      get :edit, {:id => doctor.to_param}, valid_session
      assigns(:doctor).should eq(doctor)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Doctor" do
        expect {
          post :create, {:doctor => valid_attributes}, valid_session
        }.to change(Doctor, :count).by(1)
      end

      it "assigns a newly created doctor as @doctor" do
        post :create, {:doctor => valid_attributes}, valid_session
        assigns(:doctor).should be_a(Doctor)
        assigns(:doctor).should be_persisted
      end

      it "redirects to the created doctor" do
        post :create, {:doctor => valid_attributes}, valid_session
        response.should redirect_to(Doctor.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved doctor as @doctor" do
        # Trigger the behavior that occurs when invalid params are submitted
        Doctor.any_instance.stub(:save).and_return(false)
        post :create, {:doctor => { "full_name" => "invalid value" }}, valid_session
        assigns(:doctor).should be_a_new(Doctor)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Doctor.any_instance.stub(:save).and_return(false)
        post :create, {:doctor => { "full_name" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested doctor" do
        doctor = Doctor.create! valid_attributes
        # Assuming there are no other doctors in the database, this
        # specifies that the Doctor created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Doctor.any_instance.should_receive(:update).with({ "full_name" => "MyString" })
        put :update, {:id => doctor.to_param, :doctor => { "full_name" => "MyString" }}, valid_session
      end

      it "assigns the requested doctor as @doctor" do
        doctor = Doctor.create! valid_attributes
        put :update, {:id => doctor.to_param, :doctor => valid_attributes}, valid_session
        assigns(:doctor).should eq(doctor)
      end

      it "redirects to the doctor" do
        doctor = Doctor.create! valid_attributes
        put :update, {:id => doctor.to_param, :doctor => valid_attributes}, valid_session
        response.should redirect_to(doctor)
      end
    end

    describe "with invalid params" do
      it "assigns the doctor as @doctor" do
        doctor = Doctor.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Doctor.any_instance.stub(:save).and_return(false)
        put :update, {:id => doctor.to_param, :doctor => { "full_name" => "invalid value" }}, valid_session
        assigns(:doctor).should eq(doctor)
      end

      it "re-renders the 'edit' template" do
        doctor = Doctor.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Doctor.any_instance.stub(:save).and_return(false)
        put :update, {:id => doctor.to_param, :doctor => { "full_name" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested doctor" do
      doctor = Doctor.create! valid_attributes
      expect {
        delete :destroy, {:id => doctor.to_param}, valid_session
      }.to change(Doctor, :count).by(-1)
    end

    it "redirects to the doctors list" do
      doctor = Doctor.create! valid_attributes
      delete :destroy, {:id => doctor.to_param}, valid_session
      response.should redirect_to(doctors_url)
    end
  end

end
