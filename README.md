
# circleci-cli
[![All Contributors](https://img.shields.io/badge/all_contributors-3-orange.svg?style=flat-square)](#contributors-)
[![Gem Version](https://badge.fury.io/rb/circleci-cli.svg)](https://badge.fury.io/rb/circleci-cli)
[![Circle CI](https://circleci.com/gh/unhappychoice/circleci-cli.svg?style=shield)](https://circleci.com/gh/unhappychoice/circleci-cli)
[![Code Climate](https://codeclimate.com/github/unhappychoice/circleci-cli/badges/gpa.svg)](https://codeclimate.com/github/unhappychoice/circleci-cli)
[![codecov](https://codecov.io/gh/unhappychoice/circleci-cli/branch/master/graph/badge.svg)](https://codecov.io/gh/unhappychoice/circleci-cli)
[![Libraries.io dependency status for GitHub repo](https://img.shields.io/librariesio/github/unhappychoice/circleci-cli.svg)](https://libraries.io/github/unhappychoice/circleci-cli)
![](http://ruby-gem-downloads-badge.herokuapp.com/circleci-cli?type=total)
![GitHub](https://img.shields.io/github/license/unhappychoice/circleci-cli.svg)

circleci-cli is a CLI tool for [Circle CI](https://circleci.com).

![sample.gif](https://github.com/unhappychoice/circler/raw/master/movie/rec.gif)

## Installation

```sh
$ gem install circleci-cli
```

set the `CIRCLE_CI_TOKEN` environment variable. (optional)

```sh
export CIRCLE_CI_TOKEN=your-circle-ci-token
```

## Usage
```
Commands:
  circleci-cli browse               # Open CircleCI website
  circleci-cli build                # Show the build result
  circleci-cli builds               # List builds
  circleci-cli cancel               # Cancel a build
  circleci-cli help [COMMAND]       # Describe available commands or one specific command
  circleci-cli projects             # List projects
  circleci-cli retry                # Retry a build
  circleci-cli version              # Show gem version
  circleci-cli watch                # Watch builds in real time

Options:
  -p user_name/project              # Specify repository
                                    # Default to the Git remote of current directory

  -b branch                         # Specify branch name
                                    # Default to the current Git branch

  -a, --all, --no-all               # Ignore the branch option and stop being filtered by the branch
                                    # Default to false

  -n build_number                   # Specify build number.
  -l last                           # Get or retry last failed build.
  -v verbose                        # Show all the logs if applied to watch command.

  --pretty=true/false, --no-pretty  # Make outputs pretty or not
                                    # Default to true
```

### Examples

#### Watch your project
```
$ circleci-cli watch
```

#### Watch your project and show all of the build log
```
$ circleci-cli watch -v