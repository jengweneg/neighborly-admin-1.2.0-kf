module Neighborly::Admin
  def self.policy_class
    AdminPolicy
  end

  class BaseController < ::ApplicationController
    skip_before_action :set_persistent_warning
    inherit_resources

    before_action do
      authorize Neighborly::Admin, :access?
    end

    def update
      update! do |format|
        if resource.errors.empty?
          format.json { respond_with_bip(resource) }
        else
          format.html { render action: 'edit' }
          format.json { respond_with_bip(resource) }
        end
      end
    end
  end
end
