# shCryptoAesWithGithubOrg kaizhu256 /bin/sh "$HOME/src/sandbox2/.task.sh"
# shCryptoAesWithGithubOrg kaizhu256 shTravisTaskPush "$HOME/src/sandbox2/.task.sh"
# TRAVIS_REPO_CREATE_FORCE=1 shCryptoAesWithGithubOrg npmdoc shCustomOrgRepoListCreate npmdoc/node-npmdoc-sandbox2
# shCryptoAesWithGithubOrg npmdoc shGithubRepoListTouch npmdoc/node-npmdoc-sandbox2 '[npm publishAfterCommitAfterBuild]'
# shCryptoAesWithGithubOrg npmdoc utility2 dbTableCustomOrgUpdate '{}'
# GITHUB_ORG=npmdoc utility2 dbTableCustomOrgCrudGetManyByQuery '{"query":{"buildState":{"$ne":"passed"}},"shuffle":true}'
# GITHUB_ORG=npmdoc utility2 dbTableCustomOrgCrudGetManyByQuery '{"query":{"buildState":"passed"},"limit":1,"shuffle":true}'
# [$ /bin/sh .task.sh]
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
    cd /tmp
    if [ "$TRAVIS" ]
    then
        npm install "kaizhu256/node-utility2#alpha"
    else
        ln -fs "$HOME/node_modules"
    fi
        . ./node_modules/utility2/lib.utility2.sh
    shBuildInit
    eval "$(shTravisCryptoAesDecryptYml "" $GITHUB_ORG)"
    utility2 dbTableCustomOrgUpdate "{}"
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
    #!! for GITHUB_ORG in npmdoc
    #!! for GITHUB_ORG in npmtest
    #!! for GITHUB_ORG in npmdoc npmtest
    for GITHUB_ORG in npmtest npmdoc
    do
        shInitCustomOrg
        export GITHUB_TOKEN_TOKEN="$GITHUB_TOKEN_TOKEN_API"
        if [ ! "$GITHUB_TOKEN" ]
        then
            shBuildPrint "no GITHUB_TOKEN"
            return 1
        fi



        #!! shBuildPrint "test custom list"
        #!! LIST="sandbox2"
        #!! LIST="$(shCustomOrgNameNormalize "$LIST")"
        #!! printf "$LIST\n"
        #!! shListUnflattenAndApplyFunction() {(set -e
            #!! LIST="$1"
            #!! export TRAVIS_REPO_CREATE_FORCE=1
            #!! shCustomOrgRepoListCreate "$LIST"
        #!! )}
        #!! shListUnflattenAndApply "$LIST" 10



        #!! shBuildPrint "re-build failed builds"
        #!! LIST=""
        #!! LIST="$LIST
#!! $(shDbTableCustomOrgCrudGetManyByQuery \
    #!! '{"limit":500,"query":{"buildState":{"$in":["errored","failed"]}},"shuffle":true}')"
        #!! LIST="$(shCustomOrgNameNormalize "$LIST")"
        #!! printf "$LIST\n"
        #!! shListUnflattenAndApplyFunction() {(set -e
            #!! LIST="$1"
            #!! export TRAVIS_REPO_CREATE_FORCE=1
            #!! shCustomOrgRepoListCreate "$LIST"
        #!! )}
        #!! shListUnflattenAndApply "$LIST" 10



        #!! shBuildPrint "re-build old builds"
        #!! LIST=""
        #!! LIST="$LIST
#!! $(utility2 dbTableCustomOrgCrudGetManyByQuery \
    #!! '{"limit":500,"query":{"buildState":{"$in":["passed"]}},"olderThanLast":86400000,"shuffle":true}')"
        #!! LIST="$(shCustomOrgNameNormalize "$LIST")"
        #!! printf "$LIST\n"
        #!! shListUnflattenAndApplyFunction() {(set -e
            #!! LIST="$1"
            #!! shGithubRepoListTouch "$LIST" '[npm publishAfterCommitAfterBuild]'
        #!! )}
        #!! shListUnflattenAndApply "$LIST" 10



        #!! shBuildPrint "re-build non-passed builds"
        #!! LIST=""
        #!! LIST="$LIST
#!! $(utility2 dbTableCustomOrgCrudGetManyByQuery \
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
        #!! shListUnflattenAndApply "$LIST" 10



        LIST="$(utility2 cli.customOrgStarFilterNotBuilt 0 5000)"
        shBuildPrint "rebuild unpublished starred packages $LIST"
        LIST="$(shCustomOrgNameNormalize "$LIST")"
        shBuildPrint "rebuild unpublished starred packages $LIST"
        shListUnflattenAndApplyFunction() {(set -e
            LIST="$1"
            export TRAVIS_REPO_CREATE_FORCE=1
            shCustomOrgRepoListCreate "$LIST"
        )}
        shListUnflattenAndApply "$LIST" 36



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



        #!! shBuildPrint "re-build failed builds"
        #!! LIST=""
        #!! LIST="$LIST
#!! $(shDbTableCustomOrgCrudGetManyByQuery \
    #!! '{"limit":500,"query":{"buildState":{"$in":["errored","failed"]}},"shuffle":true}')"
        #!! LIST="$(shCustomOrgNameNormalize "$LIST")"
        #!! printf "$LIST\n"
        #!! shListUnflattenAndApplyFunction() {(set -e
            #!! LIST="$1"
            #!! export TRAVIS_REPO_CREATE_FORCE=1
            #!! shCustomOrgRepoListCreate "$LIST"
        #!! )}
        #!! shListUnflattenAndApply "$LIST" 10



        shBuildPrint "re-build old builds"
        LIST=""
        LIST="$LIST
$(utility2 dbTableCustomOrgCrudGetManyByQuery \
    '{"limit":500,"query":{"buildState":{"$in":["passed"]}},"olderThanLast":86400000,"shuffle":true}')"
        LIST="$(shCustomOrgNameNormalize "$LIST")"
        printf "$LIST\n"
        shListUnflattenAndApplyFunction() {(set -e
            LIST="$1"
            shGithubRepoListTouch "$LIST" '[npm publishAfterCommitAfterBuild]'
        )}
        shListUnflattenAndApply "$LIST" 10



        LIST="$(utility2 cli.customOrgStarFilterNotBuilt 0 5000)"
        LIST="$(shCustomOrgNameNormalize "$LIST")"
        shBuildPrint "shGithubCrudRepoListCreate $LIST"
        shListUnflattenAndApplyFunction() {(set -e
            LIST="$1"
            shGithubCrudRepoListCreate "$LIST"
        )}
        shListUnflattenAndApply "$LIST" 36
        shSleep 30
        shTravisSync
        #!! shBuildPrint "rebuild unpublished starred packages $LIST"
        #!! shListUnflattenAndApplyFunction() {(set -e
            #!! LIST="$1"
            #!! export TRAVIS_REPO_CREATE_FORCE=1
            #!! shCustomOrgRepoListCreate "$LIST"
        #!! )}
        shListUnflattenAndApply "$LIST" 36



        shBuildPrint "re-build non-passed builds"
        LIST=""
        LIST="$LIST
$(utility2 dbTableCustomOrgCrudGetManyByQuery \
    '{"query":{"buildState":{"$nin":["passed","started"]}},"limit":500,"shuffle":true}')"
        LIST="$(shCustomOrgNameNormalize "$LIST")"
        printf "$LIST\n"
        shListUnflattenAndApplyFunction() {(set -e
            LIST="$1"
            export TRAVIS_REPO_CREATE_FORCE=1
            shCustomOrgRepoListCreate "$LIST"
        )}
        shListUnflattenAndApply "$LIST" 10



    done
)}

shMain
