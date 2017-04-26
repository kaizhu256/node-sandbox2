# shCryptoWithGithubOrg kaizhu256 /bin/sh "$HOME/src/sandbox2/.task.sh"
# shCryptoWithGithubOrg kaizhu256 shTravisTaskPush "$HOME/src/sandbox2/.task.sh"
# TRAVIS_REPO_CREATE_FORCE=1 shCryptoWithGithubOrg npmtest shCustomOrgRepoListCreate npmtest/node-npmtest-sandbox2
# shCryptoWithGithubOrg npmtest shGithubRepoListTouch npmtest/node-npmtest-sandbox2 '[npm publishAfterCommitAfterBuild]'
# shCryptoWithGithubOrg npmtest utility2 clis.dbTableCustomOrgUpdate
# GITHUB_ORG=npmtest utility2 cli.dbTableCustomOrgCrudGetManyByQuery '{"query":{"buildState":{"$ne":"passed"}},"shuffle":true}'
# GITHUB_ORG=npmtest utility2 cli.dbTableCustomOrgCrudGetManyByQuery '{"query":{"buildState":"passed"},"limit":1,"shuffle":true}'
# [$ /bin/sh .task.sh]
# shCryptoTravisEncrypt scrapeitall
#!! [
    #!! '2017.03.19 swagger-ui-lite',
    #!! '2017.03.28 uglifyjs-lite',
    #!! '2017.03.29 db-lite',
    #!! '2017.03.29 swgg',
    #!! '2017.04.06 jslint-lite',
    #!! '2017.04.14 istanbul-lite',
    #!! '2017.04.16 electron-lite',
    #!! '2017.04.22 apidoc-lite',
    #!! '2017.04.22 utility2'
#!! ]

shInitCustomOrg() {
    # init env
    export GITHUB_ORG="$GITHUB_ORG"
    unset GITHUB_REPO
    unset npm_package_buildCustomOrg
    if [ "$TRAVIS" ]
    then
        (cd "$HOME" && npm install "kaizhu256/node-utility2#alpha")
    fi
    DIR=/tmp/.task
    rm -fr "$DIR" && mkdir -p "$DIR" && cd "$DIR"
    . "$HOME/node_modules/utility2/lib.utility2.sh"
    shBuildInit
    eval "$(shCryptoTravisDecrypt)"
    #!! utility2 cli.dbTableCustomOrgUpdate
}

shMain() {(set -e
    case "$CI_BRANCH" in
    cron)
        shTaskCron
        ;;
    task)
        shTask
        ;;
    *)
        shTask
        ;;
    esac
)}

shTask() {(set -e
# this function will run the task
    for GITHUB_ORG in npmdoc
    #!! for GITHUB_ORG in npmtest
    #!! for GITHUB_ORG in scrapeitall
    #!! for GITHUB_ORG in npmdoc npmtest
    #!! for GITHUB_ORG in npmtest npmdoc
    do
        shInitCustomOrg
        #!! export GITHUB_TOKEN_TOKEN="$GITHUB_TOKEN_TOKEN_API"
        if [ ! "$GITHUB_TOKEN" ]
        then
            shBuildPrint "no GITHUB_TOKEN"
            return 1
        fi



        LIST=""
        LIST="$LIST
sandbox3
"
        LIST="$(shCustomOrgNameNormalize "$LIST")"
        shBuildPrint "re-build custom list $LIST"
        for GITHUB_REPO in $LIST
        do
            (
            git clone --depth=50 --branch=alpha https://github.com/$GITHUB_REPO
            cd "$(printf "$GITHUB_REPO" | sed -e "s/.*\///")"
            shBuildCiUnset
            npm install
            printf "$(shDateIso)\n" > touch.txt
            git add .
            git commit -m "[npm publishAfterCommitAfterBuild]"
            #!! npm run build-ci

            #!! continue

            shBuildInit
            if [ "$npm_package_buildCustomOrg" ]
            then
                shBuildPrint "customOrg $npm_package_buildCustomOrg"

    shBuildInit
    # init travis-ci.org env
    if [ "$TRAVIS" ]
    then
        export CI_BRANCH="${CI_BRANCH:-$TRAVIS_BRANCH}" || return $?
        export CI_HOST="${CI_HOST:-travis-ci.org}" || return $?
    fi
    # init default env
    export CI_BRANCH="${CI_BRANCH:-alpha}" || return $?
    export CI_COMMIT_ID="${CI_BRANCH:-(git rev-parse --verify HEAD)}" || return $?
    export CI_HOST="${CI_HOST:-127.0.0.1}" || return $?
    # save $CI_BRANCH
    export CI_BRANCH_OLD="${CI_BRANCH_OLD:-$CI_BRANCH}" || return $?
    # init $CI_COMMIT_*
    export CI_COMMIT_MESSAGE="$(git log -1 --pretty=%s)" || return $?
    export CI_COMMIT_INFO="$CI_COMMIT_ID - $CI_COMMIT_MESSAGE" || return $?
    export CI_COMMIT_MESSAGE_META="$(printf "#$CI_COMMIT_MESSAGE" \
        | sed -e "s/.*\(\[.*\]\).*/\1/")" || return $?
    # decrypt and exec encrypted data
    if [ "$CRYPTO_AES_KEY" ]
    then
        eval "$(shCryptoTravisDecrypt)"
    fi
    # init git config
    if (! git config user.email > /dev/null 2>&1)
    then
        git config --global user.email nobody
        git config --global user.name nobody
    fi



    shBuildPrint "$CI_COMMIT_MESSAGE_META"


    case "$CI_BRANCH" in
    alpha)
        case "$CI_COMMIT_MESSAGE_META" in
        "[npm publish]")
            shGithubPush "https://github.com/$GITHUB_REPO" HEAD:publish
            ;;
        "[npm publishAfterCommitAfterBuild]")
            # use date-semver
            shFilePackageJsonVersionIncrement "$(shDateIso | sed -e "s/-0*/./g" -e "s/T.*//")"
            printf "$(shDateIso)\n" > touch.txt
            git add .
            git commit -am "[npm publishAfterCommit]"
            export CI_BRANCH=publish
            export CI_BRANCH_OLD=publish
            export CI_COMMIT_ID="$(git rev-parse --verify HEAD)"
            find node_modules -name .git -print0 | xargs -0 rm -fr
            npm run build-ci
            ;;
        esac
        ;;
    beta)
        ;;
    master)
        git tag "$npm_package_version" || true
        shGithubPush "https://github.com/$GITHUB_REPO" "$npm_package_version" || true
        ;;
    publish)
        # init .npmrc
        printf "//registry.npmjs.org/:_authToken=$NPM_TOKEN" > "$HOME/.npmrc"
        shNpmPublishAliasList . "$npm_package_nameAliasPublish"
        sleep 5
        shNpmTestPublishedList "$npm_package_nameAliasPublish"
        sleep 5
        shNpmDeprecateAliasList "$npm_package_nameAliasDeprecate"
        # security - cleanup .npmrc
        rm "$HOME/.npmrc"
        shGithubPush "https://github.com/$GITHUB_REPO" HEAD:beta
        ;;
    esac



            fi
            )
        done
        #!! shListUnflattenAndApplyFunction() {(set -e
            #!! LIST="$1"
            #!! shGithubRepoListTouch "$LIST" '[npm publishAfterCommitAfterBuild]'
        #!! )}
        #!! shListUnflattenAndApply "$LIST"



        #!! shBuildPrint "test custom list"
        #!! LIST="sandbox2"
        #!! #!! LIST="xinhuanet.com"
        #!! LIST="$(shCustomOrgNameNormalize "$LIST")"
        #!! printf "$LIST\n"
        #!! shListUnflattenAndApplyFunction() {(set -e
            #!! LIST="$1"
            #!! export TRAVIS_REPO_CREATE_FORCE=1
            #!! shCustomOrgRepoListCreate "$LIST"
        #!! )}
        #!! shListUnflattenAndApply "$LIST"



        #!! shBuildPrint "re-build failed builds"
        #!! LIST=""
        #!! LIST="$LIST
#!! $(utility2 .clidbTableCustomOrgCrudGetManyByQuery \
    #!! '{"limit":500,"query":{"buildState":{"$in":["errored","failed"]}},"shuffle":true}')"
        #!! LIST="$(shCustomOrgNameNormalize "$LIST")"
        #!! printf "$LIST\n"
        #!! shListUnflattenAndApplyFunction() {(set -e
            #!! LIST="$1"
            #!! export TRAVIS_REPO_CREATE_FORCE=1
            #!! shCustomOrgRepoListCreate "$LIST"
        #!! )}
        #!! shListUnflattenAndApply "$LIST"



        #!! shBuildPrint "re-build old builds"
        #!! LIST=""
        #!! LIST="$LIST
#!! $(utility2 cli.dbTableCustomOrgCrudGetManyByQuery \
    #!! '{"limit":500,"query":{"buildState":{"$in":["passed"]}},"olderThanLast":86400000,"shuffle":true}')"
        #!! LIST="$(shCustomOrgNameNormalize "$LIST")"
        #!! printf "$LIST\n"
        #!! shListUnflattenAndApplyFunction() {(set -e
            #!! LIST="$1"
            #!! shGithubRepoListTouch "$LIST" '[npm publishAfterCommitAfterBuild]'
        #!! )}
        #!! shListUnflattenAndApply "$LIST"



        #!! shBuildPrint "re-build non-passed builds"
        #!! LIST=""
        #!! LIST="$LIST
#!! $(utility2 cli.dbTableCustomOrgCrudGetManyByQuery \
    #!! '{"query":{"buildState":{"$nin":["passed","started"]}},"limit":500,"shuffle":true}')"
        #!! #!! LIST="
#!! #!! config.json
        #!! #!! "
        #!! LIST="$(shCustomOrgNameNormalize "$LIST")"
        #!! printf "$LIST\n"
        #!! shListUnflattenAndApplyFunction() {(set -e
            #!! LIST="$1"
            #!! export TRAVIS_REPO_CREATE_FORCE=1
            #!! shCustomOrgRepoListCreate "$LIST"
        #!! )}
        #!! shListUnflattenAndApply "$LIST"



        #!! LIST="$(utility2 cli.customOrgStarFilterNotBuilt 0 5000)"
        #!! LIST="$(shCustomOrgNameNormalize "$LIST")"
        #!! shBuildPrint "rebuild unpublished starred packages $LIST"
        #!! shListUnflattenAndApplyFunction() {(set -e
            #!! LIST="$1"
            #!! export TRAVIS_REPO_CREATE_FORCE=1
            #!! shCustomOrgRepoListCreate "$LIST"
        #!! )}
        #!! shListUnflattenAndApply "$LIST"



    done
)}

shTaskCron() {(set -e
# this function will run the cron-task
    #!! for GITHUB_ORG in npmdoc
    #!! for GITHUB_ORG in npmtest
    #!! for GITHUB_ORG in npmdoc npmtest
    for GITHUB_ORG in npmtest npmdoc
    do
        shInitCustomOrg
        if [ ! "$GITHUB_TOKEN" ]
        then
            shBuildPrint "no GITHUB_TOKEN"
            return 1
        fi



        #!! shBuildPrint "re-build failed builds"
        #!! LIST=""
        #!! LIST="$LIST
#!! $(utility2 cli.bTableCustomOrgCrudGetManyByQuery \
    #!! '{"limit":500,"query":{"buildState":{"$in":["errored","failed"]}},"shuffle":true}')"
        #!! LIST="$(shCustomOrgNameNormalize "$LIST")"
        #!! printf "$LIST\n"
        #!! shListUnflattenAndApplyFunction() {(set -e
            #!! LIST="$1"
            #!! export TRAVIS_REPO_CREATE_FORCE=1
            #!! shCustomOrgRepoListCreate "$LIST"
        #!! )}
        #!! shListUnflattenAndApply "$LIST"



        LIST=""
        LIST="$LIST
$(utility2 cli.dbTableCustomOrgCrudGetManyByQuery \
    '{"limit":500,"query":{"buildState":{"$in":["passed"]}},"olderThanLast":86400000,"shuffle":true}')"
        LIST="$(shCustomOrgNameNormalize "$LIST")"
        shBuildPrint "re-build old builds $LIST"
        shListUnflattenAndApplyFunction() {(set -e
            LIST="$1"
            shGithubRepoListTouch "$LIST" '[npm publishAfterCommitAfterBuild]'
        )}
        shListUnflattenAndApply "$LIST"



        LIST="$(utility2 cli.customOrgStarFilterNotBuilt 0 5000)"
        LIST="$(shCustomOrgNameNormalize "$LIST")"
        shBuildPrint "shGithubCrudRepoListCreate $LIST"
        shListUnflattenAndApplyFunction() {(set -e
            LIST="$1"
            shGithubCrudRepoListCreate "$LIST"
        )}
        shListUnflattenAndApply "$LIST"
        shTravisSync
        shSleep 30



        shBuildPrint "rebuild unpublished starred packages $LIST"
        shListUnflattenAndApplyFunction() {(set -e
            LIST="$1"
            export TRAVIS_REPO_CREATE_FORCE=1
            shCustomOrgRepoListCreate "$LIST"
        )}
        shListUnflattenAndApply "$LIST"



        utility2 cli.dbTableCustomOrgUpdate
        LIST=""
        LIST="$LIST
$(utility2 cli.dbTableCustomOrgCrudGetManyByQuery \
    '{"limit":500,"query":{"buildState":{"$nin":["passed","started"]}},"olderThanLast":86400000,"shuffle":true}')"
        LIST="$(shCustomOrgNameNormalize "$LIST")"
        shBuildPrint "re-build non-passed builds $LIST"
        shListUnflattenAndApplyFunction() {(set -e
            LIST="$1"
            export TRAVIS_REPO_CREATE_FORCE=1
            shCustomOrgRepoListCreate "$LIST"
        )}
        shListUnflattenAndApply "$LIST" 10



    done
)}

shMain
