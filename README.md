sandbox
=======



# build-status [![travis-ci.org build-status](https://api.travis-ci.org/kaizhu256/node-utility2.svg)](https://travis-ci.org/kaizhu256/sandbox) ![codeship.io build-status](https://codeship.com/projects/0e6471d0-2236-0133-bcd6-0629495f9866/status)



# package-listing
[![screen-capture](https://kaizhu256.github.io/sandbox/build/screen-capture.gitLsTree.svg)](https://github.com/kaizhu256/sandbox)



# package.json
```json
{
    "dependencies": {
        "utility2": "git+https://github.com/kaizhu256/node-utility2.git#alpha"
    },
    "name": "kaizhu-sandbox",
    "repository" : {
        "type" : "git",
        "url" : "https://github.com/kaizhu256/sandbox.git"
    },
    "scripts": {
        "build-ci": "node_modules/.bin/utility2 shRun shReadmeExportPackageJson && \
node_modules/.bin/utility2 shRun shReadmeBuild",
        "test": "node_modules/.bin/utility2 shRun shReadmeExportPackageJson"
    },
    "version": "2015.8.1"
}
```



# todo
- none



# change since 9fe8c225
- version 2015.8.1
- test emscripten build on linux and osx using codeship.io and travis-ci.org
- none



# changelog of last 50 commits
[![screen-capture](https://kaizhu256.github.io/sandbox/build/screen-capture.gitLog.svg)](https://github.com/kaizhu256/sandbox/commits)



# internal build-script
- build.sh

```shell
# build.sh

# this shell script will run the build for this package

shBuildCodeship() {
    # this function will run the codeship build
    # bug - codeship can only push to external git repos using https protocol
    printf "shBuildCodeship\n" || return $?

    if [ "" ]
    then
        # build emscripten
        shBuildEmscripten || return $?
        shGitRepoBranchCommandCodeship copy \
            $REPO_SANDBOX build.codeship.io.Linux.$EMSCRIPTEN_VERSION \
            git@github.com:kaizhu256/node-emscripten.git $EMSCRIPTEN_VERSION.linux \
            || return $?
        shGitRepoBranchCommandCodeship copy \
            $REPO_SANDBOX build.codeship.io.Linux.$EMSCRIPTEN_VERSION \
            git@github.com:kaizhu256/node-emscripten.git build.emscripten-latest.linux \
            || return $?
    fi
}

shBuildEmscripten() {
    # this function will build emscripten
    curl https://s3.amazonaws.com/mozilla-games/emscripten/releases/emsdk-portable.tar.gz \
        | tar xz || return $?
    cd emsdk_portable || return $?
    ./emsdk update 2>&1 | tee -a build.log || return $?
    ./emsdk install $EMSCRIPTEN_VERSION 2>&1 | tee -a build.log || return $?
    ./emsdk activate $EMSCRIPTEN_VERSION 2>&1 | tee -a build.log || return $?
    shGitRepoBranchCommand copyPwd pwd master \
        $REPO_SANDBOX build.$CI_HOST.$(uname).$EMSCRIPTEN_VERSION || return $?
}

shBuildSudo() {
    # this function will run the sudo build
    printf "shBuildSudo\n" || return $?
}

shBuildTravis() {
    # this function will run the travis build
    printf "shBuildTravis\n" || return $?
}

shBuildTravisOsx() {
    # this function will run the travis-osx build
    printf "shBuildTravisOsx\n" || return $?

    if [ "" ]
    then
        # build emscripten in osx
        shBuildEmscripten || return $?
        # copy build to kaizhu256/node-emscripten
        shGitRepoBranchCommand copy \
            $REPO_SANDBOX build.travis-ci.org.Darwin.$EMSCRIPTEN_VERSION \
            git@github.com:kaizhu256/node-emscripten.git build.$EMSCRIPTEN_VERSION.osx.9.5 \
            || return $?
        shGitRepoBranchCommand copy \
            $REPO_SANDBOX build.travis-ci.org.Darwin.$EMSCRIPTEN_VERSION \
            git@github.com:kaizhu256/node-emscripten.git build.emscripten-latest.osx \
            || return $?
    fi
}

shGitRepoBranchCommandCodeship() {
    # this fuction will copy / move / update git-repo-branch on codeship.io
    sleep 1 || return $?
    shGitRepoBranchUpdateLocal() {
        # this function will locally-update git-repo-branch
        printf "\n" >> README.md || return $?
    }
    shGitRepoBranchCommand update \
        $REPO_SANDBOX $CI_BRANCH \
        $REPO_SANDBOX $CI_BRANCH \
        "shGitRepoBranchCommand $1 $2 $3 $4 $5 $6 $7 $8" || return $?
    return $EXIT_CODE
}

shBuild() {
    # this function will run the main build
    # run sudo build
    if [ "$(whoami)" = root ]
    then
        shBuildSudo
        exit $?
    fi

    # init env
    . node_modules/.bin/utility2 && shInit || return $?
    export EMSCRIPTEN_VERSION=emscripten-tag-1.34.4-64bit || return $?
    export REPO_BUILD_BINARY=git@github.com:kaizhu256/build-binary.git || return $?
    export REPO_SANDBOX=git@github.com:kaizhu256/sandbox.git || return $?

    # run sudo build
    if [ "$CI_HOST" = travis-ci.org ] && (sudo printf "" 2>/dev/null)
    then
        sudo sh $npm_config_dir_tmp/build.sh || return $?
    fi

    case "$CI_COMMIT_MESSAGE" in
    # run codeship.io build
    *\[codeship.io\]*)
        if [ "$CI_HOST" != codeship.io ]
        then
            exit
        fi
        shBuildCodeship || return $?
        ;;
    # run travis-ci.org build
    *\[travis-ci.org]*)
        if [ "$CI_HOST" != travis-ci.org ]
        then
            exit
        fi
        if [ "$(uname)" = Darwin ]
        then
            shBuildTravisOsx || return $?
        fi
        shBuildTravis || return $?
        ;;
    # run shGitRepoBranchCommand from $CI_COMMIT_MESSAGE
    shGitRepoBranchCommand\ *)
        if [ "$CI_HOST" != travis-ci.org ]
        then
            exit
        fi
        $CI_COMMIT_MESSAGE
        exit $?
        ;;
    *)
        exit
        ;;
    esac
}
shBuild

# save exit-code
EXIT_CODE=$?
# create package-listing
MODE_BUILD=gitLsTree shRunScreenCapture shGitLsTree || return $?
# create recent changelog of last 50 commits
MODE_BUILD=gitLog shRunScreenCapture git log -50 --pretty="%ai\u000a%B" || return $?
# upload build-artifacts to github,
# and if number of commits > 16, then squash older commits
COMMIT_LIMIT=16 shBuildGithubUpload || exit $?
# exit with $EXIT_CODE
exit $EXIT_CODE
```
