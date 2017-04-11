(set -e
# shCryptoAesWithGithubOrg npmdoc /bin/sh "$HOME/src/sandbox2/.task.sh"
# shCryptoAesWithGithubOrg kaizhu256 shTravisTaskPush "$HOME/src/sandbox2/.task.sh"
# shCryptoAesWithGithubOrg kaizhu256 shGithubRepoListTouch npmdoc/node-npmdoc-npm '[npm publishAfterCommitAfterBuild]'
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



#!! for GITHUB_ORG in npmdoc
for GITHUB_ORG in npmtest
#!! for GITHUB_ORG in npmdoc npmtest
do
    export GITHUB_ORG="$GITHUB_ORG"
    unset GITHUB_REPO
    unset npm_package_buildCustomOrg
    cd /tmp
    if [ "$TRAVIS" ]
    then
        npm install "kaizhu256/node-utility2#alpha"
        . ./node_modules/.bin/utility2
        eval "$(shTravisCryptoAesDecryptYml "" $GITHUB_ORG)"
    fi
    shBuildPrint "syncing travis ..."
    curl -H "Authorization: token $TRAVIS_ACCESS_TOKEN" -#Lf -X POST \
        "https://api.travis-ci.org/users/sync" || true
    sleep 5
    shBuildPrint "... synced travis"
    . ./node_modules/.bin/utility2
    export PATH="/tmp/node_modules/.bin:$PATH"
    export npm_config_dir_utility2="/tmp/node_modules/utility2"
    shInit

    II=240
    while [ "$II" -lt 1000 ]
    do
        LIST="https://www.npmjs.com/browse/star?offset=$II"
        printf "$LIST\n"
        LIST="$(shNpmNameListFetch $LIST)"
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
        #!! LIST="
#!! sandbox2
#!! "
        shListUnflattenAndApplyFunction() {(set -e
            LIST="$1"
            #!! export TRAVIS_REPO_CREATE_FORCE=1
            shCustomOrgRepoListCreate "$LIST"
            #!! shGithubCrudRepoListCreate "$LIST" "$GITHUB_ORG"
            #!! shGithubRepoListTouch "$LIST" '[npm publishAfterCommitAfterBuild]'
        )}
        shListUnflattenAndApply "$LIST" 16
        II="$((II+32))"
    done
done
)

