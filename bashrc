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
source $DIR/bash/secret_env
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

load_project_config