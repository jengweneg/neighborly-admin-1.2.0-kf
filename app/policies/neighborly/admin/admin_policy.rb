module Neighborly::Admin
  class AdminPolicy < ::ApplicationPolicy
   def access?
     is_admin?
   end
  end
end
