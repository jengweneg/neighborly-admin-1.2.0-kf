module Neighborly::Admin
  class DashboardController < BaseController
    inherit_resources
    defaults  resource_class: Statistics
    actions :index

    def index
      @statistics = collection.first || Statistics.new
    end
  end
end

