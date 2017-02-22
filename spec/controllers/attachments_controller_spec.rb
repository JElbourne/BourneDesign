require 'rails_helper'

RSpec.describe AttachmentsController, type: :controller do

  let(:project) {FactoryGirl.create(:project)}

  let(:valid_attributes) {
    {attachment_data: "file_data", project_id: project.id}
  }

  let(:invalid_attributes) {
    {attachment_data: nil, project_id: nil}
  }

  let(:valid_session) { {} }

  describe "GET #index" do
    it "assigns all attachments as @attachments" do
      attachment = Attachment.create! valid_attributes
      get :index, params: {}, session: valid_session
      expect(assigns(:attachments)).to eq([attachment])
    end
  end

  describe "GET #show" do
    it "assigns the requested attachment as @attachment" do
      attachment = Attachment.create! valid_attributes
      get :show, params: {id: attachment.to_param}, session: valid_session
      expect(assigns(:attachment)).to eq(attachment)
    end
  end

  describe "GET #new" do
    it "assigns a new attachment as @attachment" do
      get :new, params: {}, session: valid_session
      expect(assigns(:attachment)).to be_a_new(Attachment)
    end
  end

  describe "GET #edit" do
    it "assigns the requested attachment as @attachment" do
      attachment = Attachment.create! valid_attributes
      get :edit, params: {id: attachment.to_param}, session: valid_session
      expect(assigns(:attachment)).to eq(attachment)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Attachment" do
        expect {
          post :create, params: {attachment: valid_attributes}, session: valid_session
        }.to change(Attachment, :count).by(1)
      end

      it "assigns a newly created attachment as @attachment" do
        post :create, params: {attachment: valid_attributes}, session: valid_session
        expect(assigns(:attachment)).to be_a(Attachment)
        expect(assigns(:attachment)).to be_persisted
      end

      it "redirects to the created attachment" do
        post :create, params: {attachment: valid_attributes}, session: valid_session
        expect(response).to redirect_to(Attachment.last)
      end
    end

    context "with invalid params" do
      it "assigns a newly created but unsaved attachment as @attachment" do
        post :create, params: {attachment: invalid_attributes}, session: valid_session
        expect(assigns(:attachment)).to be_a_new(Attachment)
      end

      it "re-renders the 'new' template" do
        post :create, params: {attachment: invalid_attributes}, session: valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        {attachment_data: "NewFile"}
      }

      it "updates the requested attachment" do
        attachment = Attachment.create! valid_attributes
        put :update, params: {id: attachment.to_param, attachment: new_attributes}, session: valid_session
        attachment.reload
        expect(attachment.attachment_data).to eq("NewFile")
      end

      it "assigns the requested attachment as @attachment" do
        attachment = Attachment.create! valid_attributes
        put :update, params: {id: attachment.to_param, attachment: valid_attributes}, session: valid_session
        expect(assigns(:attachment)).to eq(attachment)
      end

      it "redirects to the attachment" do
        attachment = Attachment.create! valid_attributes
        put :update, params: {id: attachment.to_param, attachment: valid_attributes}, session: valid_session
        expect(response).to redirect_to(attachment)
      end
    end

    context "with invalid params" do
      it "assigns the attachment as @attachment" do
        attachment = Attachment.create! valid_attributes
        put :update, params: {id: attachment.to_param, attachment: invalid_attributes}, session: valid_session
        expect(assigns(:attachment)).to eq(attachment)
      end

      it "re-renders the 'edit' template" do
        attachment = Attachment.create! valid_attributes
        put :update, params: {id: attachment.to_param, attachment: invalid_attributes}, session: valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested attachment" do
      attachment = Attachment.create! valid_attributes
      expect {
        delete :destroy, params: {id: attachment.to_param}, session: valid_session
      }.to change(Attachment, :count).by(-1)
    end

    it "redirects to the attachments list" do
      attachment = Attachment.create! valid_attributes
      delete :destroy, params: {id: attachment.to_param}, session: valid_session
      expect(response).to redirect_to(attachments_path)
    end
  end

end
