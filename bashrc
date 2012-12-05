SOURCE="${BASH_SOURCE[0]}"
DIR="$( dirname "$SOURCE" )"
while [ -h "$SOURCE" ]
do 
  SOURCE="$(readlink "$SOURCE")"
  [[ $SOURCE != /* ]] && SOURCE="$DIR/$SOURCE"
  DIR="$( cd -P "$( dirname "$SOURCE"  )" && pwd )"
done
DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"

source $DIR/bash/env

if [ -f $DIR/bash/secret_env ]
then
 source $DIR/bash/secret_env
fi 
source $DIR/bash/config
source $DIR/bash/aliases

cd () {
  builtin cd "$@"
  load_project_config
}

load_project_config () {
  if [ -f ".config" ]
  then
    . .config
  fi
}

ff (){
 grep -H -r "$@" ./ --exclude=*.{git,log} --exclude-dir=\.git --exclude-dir=tmp 
}

load_project_config
