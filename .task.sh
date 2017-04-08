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



cd /tmp
if [ "$TRAVIS" ]
then
    npm install "kaizhu256/node-utility2#alpha"
    . ./node_modules/.bin/utility2
    eval "$(shTravisCryptoAesDecryptYml $CRYPTO_AES_KEY_npmdoc npmdoc)"
fi
. ./node_modules/.bin/utility2
export PATH="/tmp/node_modules/.bin:$PATH"
export npm_config_dir_utility2="/tmp/node_modules/utility2"
shInit

#!! II=2450
#!! while [ "$II" -lt 3000 ]
#!! II=850
#!! while [ "$II" -lt 1000 ]
#!! II=1000
#!! while [ "$II" -lt 1001 ]
#!! do
    #!! LIST="https://www.npmjs.com/browse/star?offset=$II"
    #!! printf "$LIST\n"
    #!! #!! export TRAVIS_REPO_CREATE_FORCE=1
    #!! shNpmdocRepoListCreate "$LIST"
    #!! II="$((II+32))"
#!! done
#!! LIST="
#!! npmdoc/node-npmdoc-lodash
#!! "
LIST="
npmdoc/node-npmdoc-aws4
"
shListUnflattenAndApplyFunction() {(set -e
    LIST="$1"
    export TRAVIS_REPO_CREATE_FORCE=1
    shNpmdocRepoListCreate "$LIST"
    #!! shGithubRepoListTouch "$LIST" '[npm publishAfterCommitAfterBuild]'
    #!! shGithubCrudRepoListCreate "$LIST" npmdoc
)}
shListUnflattenAndApply "$LIST" 16

)

