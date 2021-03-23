module Neighborly::Admin
  class DashboardController < BaseController
    inherit_resources
    defaults  resource_class: Statistics
    actions :index

    def index

    end
  end
end

