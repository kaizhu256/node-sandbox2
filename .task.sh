# shCryptoAesWithGithubOrg kaizhu256 /bin/sh "$HOME/src/sandbox2/.task.sh"
# shCryptoAesWithGithubOrg kaizhu256 shTravisTaskPush "$HOME/src/sandbox2/.task.sh"
# TRAVIS_REPO_CREATE_FORCE=1 shCryptoAesWithGithubOrg npmdoc shCustomOrgRepoListCreate npmdoc/node-npmdoc-sandbox2
# shCryptoAesWithGithubOrg npmdoc shGithubRepoListTouch npmdoc/node-npmdoc-sandbox2 '[npm publishAfterCommitAfterBuild]'
# shCryptoAesWithGithubOrg npmdoc utility2 dbTableTravisOrgUpdate '{}'
# GITHUB_ORG=npmdoc utility2 dbTableTravisOrgCrudGetManyByQuery '{"query":{"buildState":{"$ne":"passed"}},"shuffle":true}'
# GITHUB_ORG=npmdoc utility2 dbTableTravisOrgCrudGetManyByQuery '{"query":{"buildState":"passed"},"limit":1,"shuffle":true}'
# [$ /bin/sh .task.sh]
#!! [ '2017.02.28 istanbul-lite',
    #!! '2017.03.07 electron-lite',
    #!! '2017.03.16 apidoc-lite',
    #!! '2017.03.19 swagger-ui-lite',
    #!! '2017.03.28 uglifyjs-lite',
    #!! '2017.03.29 db-lite',
    #!! '2017.03.29 swgg',
    #!! '2017.04.06 jslint-lite',
    #!! '2017.04.06 utility2' ]



shCustomOrgInit() {
    # init env
    export GITHUB_ORG="$GITHUB_ORG"
    unset GITHUB_REPO
    unset npm_package_buildCustomOrg
    cd /tmp
    if [ "$TRAVIS" ]
    then
        npm install "kaizhu256/node-utility2#alpha"
        . ./node_modules/.bin/utility2
    else
        . "$HOME/src/utility2/lib.utility2.sh"
    fi
    eval "$(shTravisCryptoAesDecryptYml "" $GITHUB_ORG)"
    export PATH="/tmp/node_modules/.bin:$PATH"
    export npm_config_dir_utility2="/tmp/node_modules/utility2"
    shInit
}

shTask() {(set -e
# this function will run the task
    #!! for GITHUB_ORG in npmdoc
    for GITHUB_ORG in npmtest
    #!! for GITHUB_ORG in npmdoc npmtest
    do
        shCustomOrgInit
        II=0
        while [ "$II" -lt 5000 ]
        do



            LIST="https://www.npmjs.com/browse/star?offset=$II"
            printf "$LIST\n"
            LIST="$(shNpmNameListFetch $LIST)"
            #!! LIST="
#!! uikit
#!! "



            printf "$LIST\n"
            LIST2=""
            for NAME in $LIST
            do
                NAME="$(shNpmNameNormalize $NAME)"
                if [ "$NAME" ]
                then
                    LIST2="$LIST2 $GITHUB_ORG/node-$GITHUB_ORG-$NAME"
                fi
            done
            LIST="$LIST2"
            shListUnflattenAndApplyFunction() {(set -e
                LIST="$1"
                #!! export TRAVIS_REPO_CREATE_FORCE=1
                #!! shCustomOrgRepoListCreate "$LIST"
                shGithubCrudRepoListCreate "$LIST"
                #!! shGithubRepoListTouch "$LIST" '[npm publishAfterCommitAfterBuild]'
            )}
            shListUnflattenAndApply "$LIST" 10
            II="$((II+36))"
        done
    done
)}

shTaskCron() {(set -e
# this function will run the cron-task
    #!! for GITHUB_ORG in npmdoc
    #!! for GITHUB_ORG in npmtest
    for GITHUB_ORG in npmdoc npmtest
    do
        shCustomOrgInit
        II=-36
        while [ "$II" -lt 0 ]
        do
            II="$((II+36))"



            LIST="https://www.npmjs.com/browse/star?offset=$II"
            printf "$LIST\n"
            LIST="$(shNpmNameListFetch $LIST)"
            # update travis
            utility2 dbTableTravisOrgUpdate "{}"



            LIST=""
            LIST="$LIST
$(utility2 dbTableTravisOrgCrudGetManyByQuery \
                '{"query":{"active":{"$ne":true}},"limit":2,"shuffle":true}')"
            printf "$LIST\n"
            LIST2=""
            for NAME in $LIST
            do
                NAME="$(shNpmNameNormalize $NAME)"
                if [ "$NAME" ]
                then
                    LIST2="$LIST2 $GITHUB_ORG/node-$GITHUB_ORG-$NAME"
                fi
            done
            LIST="$LIST2"
            shListUnflattenAndApplyFunction() {(set -e
                LIST="$1"
                #!! export TRAVIS_REPO_CREATE_FORCE=1
                shCustomOrgRepoListCreate "$LIST"
                #!! shGithubCrudRepoListCreate "$LIST"
                #!! shGithubRepoListTouch "$LIST" '[npm publishAfterCommitAfterBuild]'
            )}
            shListUnflattenAndApply "$LIST" 10



            LIST=""
            LIST="$LIST
$(utility2 dbTableTravisOrgCrudGetManyByQuery \
                '{"query":{"active":true,"buildState":{"$ne":"passed"}},"limit":2,"shuffle":true}')"
            LIST="$LIST
$(utility2 dbTableTravisOrgCrudGetManyByQuery \
                '{"query":{"active":true,"buildState":"passed"},"limit":2,"shuffle":true}')"
            printf "$LIST\n"
            LIST2=""
            for NAME in $LIST
            do
                NAME="$(shNpmNameNormalize $NAME)"
                if [ "$NAME" ]
                then
                    LIST2="$LIST2 $GITHUB_ORG/node-$GITHUB_ORG-$NAME"
                fi
            done
            LIST="$LIST2"
            shListUnflattenAndApplyFunction() {(set -e
                LIST="$1"
                #!! export TRAVIS_REPO_CREATE_FORCE=1
                #!! shCustomOrgRepoListCreate "$LIST"
                #!! shGithubCrudRepoListCreate "$LIST"
                shGithubRepoListTouch "$LIST" '[npm publishAfterCommitAfterBuild]'
            )}
            shListUnflattenAndApply "$LIST" 10



        done
    done
)}

shMain() {(set -e
    case "$CI_BRANCH" in
    cron)
        shTaskCron
        ;;
    task)
        shTask
        ;;
    esac
)}

shMain
