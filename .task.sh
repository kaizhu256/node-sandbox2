# shCryptoWithGithubOrg kaizhu256 shGithubRepoListTouch kaizhu256/node-swgg-github-misc '[build app.swgg] npm_package_swggAll=github-all'
# shCryptoWithGithubOrg kaizhu256 shCustomOrgRepoListCreate kaizhu256/sandbox3
# shCryptoWithGithubOrg kaizhu256 /bin/sh "$HOME/src/sandbox2/.task.sh"
# shCryptoWithGithubOrg kaizhu256 shTravisTaskPush "$HOME/src/sandbox2/.task.sh"
# TRAVIS_REPO_CREATE_FORCE=1 shCryptoWithGithubOrg npmtest shCustomOrgRepoListCreate npmtest/node-npmtest-sandbox2
# shCryptoWithGithubOrg npmtest shGithubRepoListTouch npmtest/node-npmtest-sandbox2 '[npm publishAfterCommitAfterBuild]'
# shCryptoWithGithubOrg npmtest utility2 clis.dbTableCustomOrgUpdate
# GITHUB_ORG=npmtest utility2 cli.dbTableCustomOrgCrudGetManyByQuery '{"query":{"buildState":{"$ne":"passed"}},"shuffle":true}'
# GITHUB_OR=npmtest utility2 cli.dbTableCustomOrgCrudGetManyByQuery '{"query":{"buildState":"passed"},"limit":1,"shuffle":true}'
# [$ /bin/sh .task.sh]
# shCryptoTravisEncrypt scrapeitall
#!! [
  #!! '00.00.01 swgg-github',
  #!! '00.00.01 swgg-npm',
  #!! '2017.09.31 itunes-search-lite', // 52 - master
  #!! '2017.10.01 elasticsearch-lite', // 58

  #!! '2017.11.07 db-lite', // 148 - master
  #!! '2017.11.15 electron-lite', // 305 - master
  #!! '2017.11.15 github-crud', // 107 - master
  #!! '2017.11.21 istanbul-lite', // 530 - master
  #!! '2018.01.12 jslint-lite', // 686 - master
  #!! '2018.01.13 apidoc-lite', // 142 - master
  #!! '2018.01.14 swagger-ui-lite', // 293 - master
  #!! '2018.01.15 uglifyjs-lite', // 44 - master

  #!! '2017.11.06 swgg-facebook-all', // 15
  #!! '2017.11.22 swgg-google-translate', // 26
  #!! '2018.01.12 swgg' // 42,208 - master,
  #!! '2018.01.12 swgg-google-all, // 45 - master'
  #!! '2018.01.15 swgg-google-maps', // 38 - master
  #!! '2018.01.18 swgg-wechat-pay', // 21 - master
  #!! '2018.01.19 swgg-github-gist', // 0 - master
  #!! '2018.01.19 swgg-github-all', // 0 - master
  #!! '2018.01.19 swgg-wechat-all', // 21

  #!! '2018.01.13 utility2' // 3,419 - master
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
    utility2 utility2.dbTableCustomOrgUpdate
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
    for GITHUB_ORG in kaizhu256
    #!! for GITHUB_ORG in npmdoc
    #!! for GITHUB_ORG in npmtest
    #!! for GITHUB_ORG in scrapeitall
    #!! for GITHUB_ORG in npmdoc npmtest
    #!! for GITHUB_ORG in npmtest npmdoc
    do
        #!! shInitCustomOrg
        #!! export GITHUB_TOKEN="$GITHUB_TOKEN_TOKEN_API"
        if [ ! "$GITHUB_TOKEN" ]
        then
            shBuildPrint "no GITHUB_TOKEN"
            return 1
        fi



        #!! APIDOC_RAW_CREATE=1 SWGG_ALL=github-all shBuildAppSwggUpdate github-misc
        #!! return



        #!! utility2 cli.dbTableCustomOrgUpdate
        #!! LIST=""
        #!! LIST="$LIST
#!! $(utility2 cli.dbTableCustomOrgCrudGetManyByQuery \
    #!! '{"limit":500,"query":{"buildState":{"$nin":["passed","started"]}},"olderThanLast":86400000,"shuffle":true}')"
        #!! LIST="$(shCustomOrgNameNormalize "$LIST")"
        #!! shBuildPrint "re-build non-passed builds $LIST"
        #!! shListUnflattenAndApplyFunction() {(set -e
            #!! LIST="$1"
            #!! export TRAVIS_REPO_CREATE_FORCE=1
            #!! shCustomOrgRepoListCreate "$LIST"
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



        #!! LIST=""
        #!! LIST="$LIST
#!! $(utility2 cli.dbTableCustomOrgCrudGetManyByQuery \
    #!! '{"limit":10,"query":{"buildState":{"$in":["passed"]}},"olderThanLast":86400000,"shuffle":true}')"
        #!! LIST="$(shCustomOrgNameNormalize "$LIST")"
        #!! shBuildPrint "re-build old passed builds $LIST"
        #!! for GITHUB_REPO in $LIST
        #!! do
            #!! shCustomOrgBuildCi "$GITHUB_REPO"
        #!! done



        LIST=""
        LIST="$LIST
$(utility2 cli.dbTableCustomOrgCrudGetManyByQuery \
    '{"limit":1,"query":{"buildState":{"$in":["passed"]}},"olderThanLast":0,"shuffle":true}')"
        LIST="$(shCustomOrgNameNormalize "$LIST")"
        shBuildPrint "re-build old, passed-builds $LIST"
        shListUnflattenAndApplyFunction() {(set -e
            LIST="$1"
            shGithubRepoListTouch "$LIST" '[npm publishAfterCommitAfterBuild]'
        )}
        shListUnflattenAndApply "$LIST"



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
    for GITHUB_ORG in npmdoc
    #!! for GITHUB_ORG in npmtest
    #!! for GITHUB_ORG in npmdoc npmtest
    #!! for GITHUB_ORG in npmtest npmdoc
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
        shBuildPrint "re-build old, passed-builds $LIST"
        shListUnflattenAndApplyFunction() {(set -e
            LIST="$1"
            shGithubRepoListTouch "$LIST" '[npm publishAfterCommitAfterBuild]'
        )}
        shListUnflattenAndApply "$LIST"



        #!! LIST="$(utility2 cli.customOrgStarFilterNotBuilt 0 5000)"



        #!! LIST="$(shCustomOrgNameNormalize "$LIST")"
        #!! shBuildPrint "shGithubCrudRepoListCreate $LIST"
        #!! shListUnflattenAndApplyFunction() {(set -e
            #!! LIST="$1"
            #!! shGithubCrudRepoListCreate "$LIST"
        #!! )}
        #!! shListUnflattenAndApply "$LIST"
        #!! shTravisSync
        #!! shSleep 30



        #!! shBuildPrint "rebuild unpublished starred packages $LIST"
        #!! shListUnflattenAndApplyFunction() {(set -e
            #!! LIST="$1"
            #!! export TRAVIS_REPO_CREATE_FORCE=1
            #!! shCustomOrgRepoListCreate "$LIST"
        #!! )}
        #!! shListUnflattenAndApply "$LIST"



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
        shListUnflattenAndApply "$LIST"



    done
)}

shMain
