module Neighborly::Admin
  class ContributionsController < BaseController
    has_scope :by_user_id, :by_key, :user_name_contains, :user_email_contains, :payer_email_contains, :project_name_contains, :confirmed, :with_state, :by_value
    has_scope :credits, type: :boolean
    has_scope :between_values, using: [ :start_at, :ends_at ], allow_blank: true

    def self.contribution_actions
      %w[confirm pendent refund hide cancel push_to_trash].each do |action|
        define_method action do
          resource.send(action)
          flash.notice = I18n.t("neighborly.admin.contributions.messages.successful.#{action}")
          redirect_to contributions_path(params[:local_params])
        end
      end
    end
    contribution_actions

    def change_reward
      resource.change_reward! params[:reward_id]
      flash.notice = I18n.t('neighborly.admin.contributions.messages.successful.change_reward')
      redirect_to contributions_path(params[:local_params])
    end

    protected
    def collection
      @contributions = apply_scopes(end_of_association_chain).without_state('deleted').order("contributions.created_at DESC").page(params[:page]) || []
    end

    def permitted_params
      params.permit({ contribution: Contribution.attribute_names.map(&:to_sym) })
    end
  end
end
