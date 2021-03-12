module Neighborly::Admin
  class UsersController < BaseController
    inherit_resources
    before_action :set_title
    before_action :set_totals

    has_scope :by_id, :by_name, :by_email, :by_key, :has_credits, :has_credits_difference, only: :index

    protected
    def set_totals
      totals = end_of_association_chain.contribution_totals
      @total_users = totals[:users].to_i
      @total_contributions = totals[:contributions]
      @total_contributed = totals[:contributed]
      @total_credits = totals[:credits]
    end

    def set_title
      @title = t("admin.users.index.title")
    end

    def collection
      @users ||= apply_scopes(end_of_association_chain).order_by(params[:order_by] || 'created_at DESC').includes(:user_total).page(params[:page])
    end
  end
end

