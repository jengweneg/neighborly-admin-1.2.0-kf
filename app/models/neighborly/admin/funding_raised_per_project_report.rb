module Neighborly::Admin
  class FundingRaisedPerProjectReport < ActiveRecord::Base
    acts_as_copy_target
  end
end
