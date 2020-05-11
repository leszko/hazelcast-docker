BRANCH_NAME='origin/tags/v4.0.1-test'
DOCKER_TAG=${BRANCH_NAME#'origin/tags/v'}
echo $DOCKER_TAG
