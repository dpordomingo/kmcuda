# list of languages to build the documentation for
# example: LANGUAGES = python cpp
LANGUAGES = cpp
# destination output of the built docs
DESTINATION_FOLDER ?= ./output
# name of the version docs being built
VERSION_NAME ?= $(git name-rev --tags --name-only `git rev-parse HEAD`)
# repository name
REPOSITORY ?= "kmcuda"
# user or organization who owns the repository
REPOSITORY_OWNER ?= "dpordomingo"

# do not edit this
SHARED_FOLDER ?= /etc/shared
MAKEFILE = Makefile.docs

$(MAKEFILE):
	cp "$(SHARED_FOLDER)/ci/Makefile.docs" .;

-include $(MAKEFILE)