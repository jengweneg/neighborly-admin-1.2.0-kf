module Neighborly::Admin
  class DashboardController < BaseController
    inherit_resources
    defaults  resource_class: Statistics
    actions :index

    def index
      @statistics = Statistics.new(
        total_users: User.count,
        total_organization_users: Organization.count,
        total_contributions: Contribution.count,
        total_contributors: Contribution.distinct.count(:user_id),
        total_contributed: Contribution.sum(:value),
        total_projects: Project.count,
        total_projects_success: Project.with_state('successful').count,
        total_projects_online: Project.with_state('online').count,
        total_projects_draft: Project.with_state('draft').count,
        total_projects_soon: Project.with_state('soon').count,
        )
    end
  end
end

