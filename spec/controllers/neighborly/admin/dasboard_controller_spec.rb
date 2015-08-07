require 'spec_helper'

describe Neighborly::Admin::DashboardController do
  routes { Neighborly::Admin::Engine.routes }
  subject{ response }
  let(:admin) { create(:user, admin: true) }
  before do
    controller.stub(:current_user).and_return(admin)
  end

  describe "GET index" do
    before do
      get :index
    end
    it{ should render_template :index }
    its(:status){ should == 200 }
  end
end
