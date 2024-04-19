GIT_HASH=$(git rev-parse --short HEAD)
BRANCH_NAME=$(git branch-name)
echo $GIT_HASH $BRANCH_NAME
docker build -t forever-iot/config-server:${GIT_HASH} -t forever-iot/config-server:${BRANCH_NAME} -t efk-stack.home:5000/forever-iot/config-server:${BRANCH_NAME} .