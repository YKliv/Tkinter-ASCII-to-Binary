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
        