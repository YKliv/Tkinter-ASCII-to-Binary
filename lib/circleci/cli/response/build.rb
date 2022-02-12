
# frozen_string_literal: true

module CircleCI
  module CLI
    module Response
      class Build
        class << self
          def all(username, reponame)
            CircleCi::Project.new(username, reponame, 'github').recent_builds
                             .body
                             .map { |b| Build.new(b) }
          end

          def failed(username, reponame)
            CircleCi::Project.new(username, reponame, 'github').recent_builds(filter: 'failed')