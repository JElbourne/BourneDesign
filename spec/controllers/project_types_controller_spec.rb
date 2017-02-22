require 'rails_helper'

RSpec.describe ProjectTypesController, type: :controller do

  let(:valid_attributes) {
    {name: Faker::Name.name}
  }

  let(:invalid_attributes) {
    {name: nil}
  }

  let(:valid_session) { {} }

  describe "GET #index" do
    it "assigns all project_types as @project_types" do
      project_type = ProjectType.create! valid_attributes
      get :index, params: {}, session: valid_session
      expect(assigns(:project_types)).to eq([project_type])
    end
  end

  describe "GET #show" do
    it "assigns the requested project_type as @project_type" do
      project_type = ProjectType.create! valid_attributes
      get :show, params: {id: project_type.to_param}, session: valid_session
      expect(assigns(:project_type)).to eq(project_type)
    end
  end

  describe "GET #new" do
    it "assigns a new project_type as @project_type" do
      get :new, params: {}, session: valid_session
      expect(assigns(:project_type)).to be_a_new(ProjectType)
    end
  end

  describe "GET #edit" do
    it "assigns the requested project_type as @project_type" do
      project_type = ProjectType.create! valid_attributes
      get :edit, params: {id: project_type.to_param}, session: valid_session
      expect(assigns(:project_type)).to eq(project_type)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new ProjectType" do
        expect {
          post :create, params: {project_type: valid_attributes}, session: valid_session
        }.to change(ProjectType, :count).by(1)
      end

      it "assigns a newly created project_type as @project_type" do
        post :create, params: {project_type: valid_attributes}, session: valid_session
        expect(assigns(:project_type)).to be_a(ProjectType)
        expect(assigns(:project_type)).to be_persisted
      end

      it "redirects to the created project_type" do
        post :create, params: {project_type: valid_attributes}, session: valid_session
        expect(response).to redirect_to(ProjectType.last)
      end
    end

    context "with invalid params" do
      it "assigns a newly created but unsaved project_type as @project_type" do
        post :create, params: {project_type: invalid_attributes}, session: valid_session
        expect(assigns(:project_type)).to be_a_new(ProjectType)
      end

      it "re-renders the 'new' template" do
        post :create, params: {project_type: invalid_attributes}, session: valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        {name: "Jay"}
      }

      it "updates the requested project_type" do
        project_type = ProjectType.create! valid_attributes
        put :update, params: {id: project_type.to_param, project_type: new_attributes}, session: valid_session
        project_type.reload
        expect(project_type.name).to eq("Jay")
      end

      it "assigns the requested project_type as @project_type" do
        project_type = ProjectType.create! valid_attributes
        put :update, params: {id: project_type.to_param, project_type: valid_attributes}, session: valid_session
        expect(assigns(:project_type)).to eq(project_type)
      end

      it "redirects to the project_type" do
        project_type = ProjectType.create! valid_attributes
        put :update, params: {id: project_type.to_param, project_type: valid_attributes}, session: valid_session
        expect(response).to redirect_to(project_type)
      end
    end

    context "with invalid params" do
      it "assigns the project_type as @project_type" do
        project_type = ProjectType.create! valid_attributes
        put :update, params: {id: project_type.to_param, project_type: invalid_attributes}, session: valid_session
        expect(assigns(:project_type)).to eq(project_type)
      end

      it "re-renders the 'edit' template" do
        project_type = ProjectType.create! valid_attributes
        put :update, params: {id: project_type.to_param, project_type: invalid_attributes}, session: valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested project_type" do
      project_type = ProjectType.create! valid_attributes
      expect {
        delete :destroy, params: {id: project_type.to_param}, session: valid_session
      }.to change(ProjectType, :count).by(-1)
    end

    it "redirects to the project_types list" do
      project_type = ProjectType.create! valid_attributes
      delete :destroy, params: {id: project_type.to_param}, session: valid_session
      expect(response).to redirect_to(project_types_path)
    end
  end

end
