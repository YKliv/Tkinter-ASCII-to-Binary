# frozen_string_literal: true

module CircleCI
  module CLI
    module Command
      class BuildRepository
        def initialize(username, reponame, branch: nil, user: nil)
          @username = username
          @user = user
          @reponame = reponame
          @branch = branch
          @builds = Response::Build.all(@username, @reponame)
          @build_numbers_shown = @builds.select(&:finished?).map(&:build_number)
        end

        def update
          response = if @branch
                       Response::Build.branch(@username, @reponame, @branch)
                     else
                       Response::Build.all(@username, @reponame)
                     end

         