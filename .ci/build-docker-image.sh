#!/bin/sh

BUILD_ID_FILE_PATH=".ci/BUILD_ID"
APP_VERSION_FILE="VERSION"

get_app_version(){
  appVersion=$(cat $APP_VERSION_FILE)
  echo $appVersion
}

get_build_id () {
  oldBuidId=$(cat $BUILD_ID_FILE_PATH)
  currBuidId=$((oldBuidId+1))
  echo $currBuidId > $BUILD_ID_FILE_PATH
  echo $currBuidId
}

build_id=$(get_build_id)
app_version=$(get_app_version)
assembly_version="${app_version}.${build_id}"
git_branch_name=$(git symbolic-ref --short -q HEAD)
git_commit_id=$(git rev-parse HEAD)

echo "build_id = $build_id"
echo "app_version = $app_version"
echo "assembly_version = $assembly_version"
echo "git_commit_id = $git_commit_id"
echo "git_branch_name = $git_branch_name"

docker build \
  --build-arg assembly_version=${assembly_version} \
  --build-arg branch_name=${git_branch_name}  \
  --build-arg commit_id=${git_commit_id}  \
  -t sample_app:$assembly_version .

#docker scan sample_app:$assembly_version
#scan_result=$?
#echo "scan_result = $scan_result"

docker tag sample_app:$assembly_version sample_app:latest
