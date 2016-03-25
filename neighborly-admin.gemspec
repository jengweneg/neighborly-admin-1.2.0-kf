# -*- encoding: utf-8 -*-
# stub: neighborly-admin 1.2.0 ruby lib

Gem::Specification.new do |s|
  s.name = "neighborly-admin"
  s.version = "1.2.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Josemar Luedke"]
  s.date = "2016-03-09"
  s.date = "2015-08-07"
  s.description = "This is the admin of Neighbor.ly"
  s.email = ["josemarluedke@gmail.com"]
  s.executables = ["rails"]
  s.files = [".gitignore", ".gitmodules", ".rspec", ".travis.yml", "CHANGELOG.md", "Gemfile", "LICENSE.txt", "README.md", "Rakefile", "app/assets/images/neighborly/admin/.gitkip", "app/assets/javascripts/neighborly-admin.js", "app/assets/javascripts/neighborly/admin/admin.js.coffee", "app/assets/javascripts/neighborly/admin/channels/new.js.coffee", "app/assets/javascripts/neighborly/admin/modules/sort.js.coffee", "app/assets/stylesheets/neighborly-admin.sass", "app/assets/stylesheets/neighborly/admin/.gitkip", "app/assets/stylesheets/neighborly/admin/admin.sass", "app/controllers/neighborly/admin/base_controller.rb", "app/controllers/neighborly/admin/channels/members_controller.rb", "app/controllers/neighborly/admin/channels_controller.rb", "app/controllers/neighborly/admin/contacts_controller.rb", "app/controllers/neighborly/admin/contributions_controller.rb", "app/controllers/neighborly/admin/dashboard_controller.rb", "app/controllers/neighborly/admin/financials_controller.rb", "app/controllers/neighborly/admin/press_assets_controller.rb", "app/controllers/neighborly/admin/projects_controller.rb", "app/controllers/neighborly/admin/reports/base_controller.rb", "app/controllers/neighborly/admin/reports/contribution_reports_controller.rb", "app/controllers/neighborly/admin/reports/funding_raised_per_project_reports_controller.rb", "app/controllers/neighborly/admin/reports/statistics_controller.rb", "app/controllers/neighborly/admin/tags_controller.rb", "app/controllers/neighborly/admin/users_controller.rb", "app/models/neighborly/admin/.gitkip", "app/models/neighborly/admin/contribution_concern.rb", "app/models/neighborly/admin/funding_raised_per_project_report.rb", "app/models/neighborly/admin/project_concern.rb", "app/models/neighborly/admin/statistics.rb", "app/models/neighborly/admin/user_concern.rb", "app/policies/neighborly/admin/admin_policy.rb", "app/views/neighborly/admin/.gitkip", "app/views/neighborly/admin/channels/_form.html.slim", "app/views/neighborly/admin/channels/edit.html.slim", "app/views/neighborly/admin/channels/index.html.slim", "app/views/neighborly/admin/channels/members/index.html.slim", "app/views/neighborly/admin/channels/members/new.html.slim", "app/views/neighborly/admin/channels/new.html.slim", "app/views/neighborly/admin/contacts/index.html.slim", "app/views/neighborly/admin/contacts/show.html.slim", "app/views/neighborly/admin/contributions/index.html.slim", "app/views/neighborly/admin/dashboard/index.html.slim", "app/views/neighborly/admin/financials/index.html.slim", "app/views/neighborly/admin/layouts/_menu.html.slim", "app/views/neighborly/admin/press_assets/_form.html.slim", "app/views/neighborly/admin/press_assets/edit.html.slim", "app/views/neighborly/admin/press_assets/index.html.slim", "app/views/neighborly/admin/press_assets/new.html.slim", "app/views/neighborly/admin/projects/index.html.slim", "app/views/neighborly/admin/projects/populate_contribution.html.slim", "app/views/neighborly/admin/tags/_form.html.slim", "app/views/neighborly/admin/tags/edit.html.slim", "app/views/neighborly/admin/tags/index.html.slim", "app/views/neighborly/admin/tags/new.html.slim", "app/views/neighborly/admin/users/index.html.slim", "bin/rails", "config/locales/en.yml", "config/routes.rb", "db/migrate/20141005184741_create_neighbor_admin_funding_raised_per_project_reports.rb", "db/migrate/20141005191509_create_neighborly_admin_statistics.rb", "lib/neighborly/admin.rb", "lib/neighborly/admin/engine.rb", "lib/neighborly/admin/version.rb", "neighborly-admin.gemspec", "spec/controllers/neighborly/admin/channels/members_controller_spec.rb", "spec/controllers/neighborly/admin/channels_controller_spec.rb", "spec/controllers/neighborly/admin/contacts_controller_spec.rb", "spec/controllers/neighborly/admin/cotributions_controller_spec.rb", "spec/controllers/neighborly/admin/dasboard_controller_spec.rb", "spec/controllers/neighborly/admin/financials_controller_spec.rb", "spec/controllers/neighborly/admin/press_assets_controller_spec.rb", "spec/controllers/neighborly/admin/projects_controller_spec.rb", "spec/controllers/neighborly/admin/tags_controller_spec.rb", "spec/controllers/neighborly/admin/users_controller_spec.rb", "spec/models/neighborly/admin/contribution_concern_spec.rb", "spec/models/neighborly/admin/project_concern_spec.rb", "spec/models/neighborly/admin/user_concern_spec.rb", "spec/policies/neighborly/admin/admin_policy_spec.rb", "spec/spec_helper.rb"]
  s.homepage = "https://github.com/neighborly/neighborly-admin"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.2.2"
  s.summary = "Neighbor.ly Admin."
  s.test_files = ["spec/controllers/neighborly/admin/channels/members_controller_spec.rb", "spec/controllers/neighborly/admin/channels_controller_spec.rb", "spec/controllers/neighborly/admin/contacts_controller_spec.rb", "spec/controllers/neighborly/admin/cotributions_controller_spec.rb", "spec/controllers/neighborly/admin/dasboard_controller_spec.rb", "spec/controllers/neighborly/admin/financials_controller_spec.rb", "spec/controllers/neighborly/admin/press_assets_controller_spec.rb", "spec/controllers/neighborly/admin/projects_controller_spec.rb", "spec/controllers/neighborly/admin/tags_controller_spec.rb", "spec/controllers/neighborly/admin/users_controller_spec.rb", "spec/models/neighborly/admin/contribution_concern_spec.rb", "spec/models/neighborly/admin/project_concern_spec.rb", "spec/models/neighborly/admin/user_concern_spec.rb", "spec/policies/neighborly/admin/admin_policy_spec.rb", "spec/spec_helper.rb"]

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rails>, ["~> 4.0"])
      s.add_runtime_dependency(%q<best_in_place>, ["~> 3.0.0.rc1"])
      s.add_runtime_dependency(%q<postgres-copy>, ["~> 0.8.0"])
      s.add_development_dependency(%q<rake>, ["~> 10.2"])
      s.add_development_dependency(%q<rspec-rails>, ["~> 2.14"])
      s.add_development_dependency(%q<factory_girl_rails>, ["~> 4.3"])
    else
      s.add_dependency(%q<rails>, ["~> 4.0"])
      s.add_dependency(%q<best_in_place>, ["~> 3.0.0.rc1"])
      s.add_dependency(%q<postgres-copy>, ["~> 0.8.0"])
      s.add_dependency(%q<rake>, ["~> 10.2"])
      s.add_dependency(%q<rspec-rails>, ["~> 2.14"])
      s.add_dependency(%q<factory_girl_rails>, ["~> 4.3"])
    end
  else
    s.add_dependency(%q<rails>, ["~> 4.0"])
    s.add_dependency(%q<best_in_place>, ["~> 3.0.0.rc1"])
    s.add_dependency(%q<postgres-copy>, ["~> 0.8.0"])
    s.add_dependency(%q<rake>, ["~> 10.2"])
    s.add_dependency(%q<rspec-rails>, ["~> 2.14"])
    s.add_dependency(%q<factory_girl_rails>, ["~> 4.3"])
  end
end
