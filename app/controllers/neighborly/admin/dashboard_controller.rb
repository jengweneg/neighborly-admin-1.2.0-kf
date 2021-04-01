module Neighborly::Admin
  class DashboardController < BaseController
    inherit_resources
    defaults  resource_class: Statistics
    actions :index

    def index
      @statistics = collection.first || Statistics.new(
        total_users: 0,
        total_organization_users:0,
        total_personal_users: 0,
        total_channel_users: 0,
        total_communities: 0,
        total_contributions: 0,
        total_contributors: 0,
        total_contributed: 0,
        total_projects: 0,
        total_projects_success: 0,
        total_projects_online: 0,
        total_projects_draft: 0,
        total_projects_soon: 0,
        )
    end
  end
end

