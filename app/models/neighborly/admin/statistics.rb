module Neighborly::Admin
  class Statistics < ActiveRecord::Base
    acts_as_copy_target
  end
end
