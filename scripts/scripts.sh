dl(){
  docker ps -l --filter "status=running" --format "{{.Names}}"
}

usca_volume_rm(){
  docker volume ls --filter=name=uSCA | tr -s ' ' | cut -d ' ' -f 2  | xargs docker volume rm
}

rename_shit(){
  find ./ -maxdepth 1 -name 'node*.tar' | sed 'p;s#node_version#usca_node#' | xargs -n2 mv
}

concat_ssh(){
  ssh_config=/etc/ssh/ssh_config
  content="$(ssh_sed)"
  cat $content >> ~/dougtest
  cat_cpe
}

cat_cpe(){
  concatfile=/etc/ssh/ssh_config_cpe
  cat $concatfile
}

ssh_sed(){
  ssh_config=/etc/ssh/ssh_config
  concatfile=/etc/ssh/ssh_config_cpe
  sed -e "s#Include\ $concatfile##" < $ssh_config
}

db(){
  set -x
  docker exec -ti "$1" bash
}

dbl(){
  db "$(dl)"
}

dba(){
  set -x
  docker exec -u root -ti "$1" bash
}

dbr(){
  docker exec -u root -ti "$(dl)" bash
}

dr(){
  docker rm $(docker ps -a -q)
}

ds(){
  docker run $1
}

dka(){
  docker rm -f $(docker ps -a -q)
}

dk(){
  docker kill $1
}

dkl(){
  docker kill `dl`
}


kill_audio(){
  sudo killall coreaudiodo
}

dra(){
  docker rm $(docker ps -a -q)
}

drmi(){
  docker rmi $(docker ps -a -q)
}

today(){
  date +'%y-%m-%d'
}

crop_daily(){
  qpdf "$HOME/Downloads/$(today).pdf" --pages . 1 -- "$HOME/Downloads/daily_journal_$(today).pdf"
}

to_l4(){
  mv $1 ~/Documents/Syncthing/layer4/Documents/
}

export_daily(){
  crop_daily
  to_l4 "$HOME/Downloads/daily_journal_$(today).pdf"
}

neat(){
  #only to bookmark .sub_ext
  converted_filename=$(ruby -rpathname -e "puts Pathname.new('$1').sub_ext('.mp4')")
  echo $converted_filename
}

mov2mp4(){
  ext="${1#*.}"
  ffmpeg -i $1 -vcodec h264 -acodec mp2  sed -e "s#$ext#mp4#"
}

load_js_env(){
  load_node && load_yarn && load_npm
}

which_node(){jq .engines.node package.json | tr -d '"'}

load_node(){
  nvm use "$( which_node )"
}

which_npm(){ jq .engines.npm package.json | tr -d '"'}

load_npm(){
  yarn global add npm@"$(which_npm)"
}

which_yarn(){jq .engines.yarn package.json | tr -d '"'}

load_yarn(){
  npm install yarn@"$(which_yarn)"
  yarn set version "$(which_yarn)"
}

yarn_latest(){
  yarn global add npm@1.22.10
}

engines(){
  echo "npm: $(npm -v)"
  echo "yarn: $(yarn -v)"
  echo "node: $(node -v)"
}


test_yarn(){
  bunle exec ruby ~/Work/usca_runbook/lib/yarnlock_inspector.rb
}

smaller(){
  set -x
  ext="${1#*.}"
  convert -scale 50% $1 "${1%.$ext}_smaller.$ext"
}

pixelate(){
  set -x
  ext="${1#*.}"
  convert -sample 50% -sample 1000%  $1 "${1%.$ext}_pixelated.$ext"
}

stars(){
  for i in $(seq 1 10); do
		mkdir -p stars
		convert -size 500x500 xc: +noise Random -channel R -threshold 0.07% \
			-negate -channel RGB -separate plasma:DarkOrchid1 \
			+channel \( +clone \) -compose multiply -flatten \
			-virtual-pixel tile  -blur 0x.5 \
			\( -clone 0  -motion-blur 0x20+15 -motion-blur 0x20+195 \) \
			\( -clone 0  -motion-blur 0x20-45  -motion-blur 0x20+135 \) \
			-compose screen -background black -flatten \
			-normalize "stars/stars$i.png"
  done
  convert -delay 10 stars/*.png stars.gif
}

helloip(){ (ifdata -e wlan0 && ifdata -pa wlan0) || (ifdata -e en0 && ifdata -pa en0) }

tls_test(){ 
  ruby -e "require 'net/http'; require 'json'; puts JSON.parse(Net::HTTP.get(URI('https://www.howsmyssl.com/a/check')))['tls_version']"
}

test_parse(){
  ruby -ryarnlock -e "Yarnlock.parse('shit.json')"
}

test_stringify(){
  ruby -ryarnlock -e "Yarnlock.stringify('shit.json')"
}

myknitter(){
  ruby -rknitter -rpry -e "k = Knitter::Yarn.new('./'); binding.pry; puts 'done'"
}

mkenv(){
  direnv dump > .envrc.cache
}

provision_container(){
  ruby -r"$HOME/Work/usca_runbook/bin/container_maker.rb" -e"ContainerMaker.new.name" $directory
}

container_runner(){
  ruby -r"$HOME/Work/usca_runbook/bin/container_maker.rb" -e"ContainerMaker.new.$1" $directory $2
}
usca(){
  #better done with rake
  # runbook exec --auto --start-at=1.1 runbooks/snyk_upgrade.rb
  directory="$( cd "$( echo "${BASH_SOURCE[0]%/*}" )"; pwd )"
  case $1 in
    dropin)
      echo "building a docker container based on $directory"
      container="$(provision_container)"
      sleep 4
      echo $container
      docker exec -it $container bash
      ;;
    root)
      echo "building a docker container based on $directory"
      container="$(provision_container)"
      sleep 4
      echo $container
      docker exec -it -u root $container bash
      ;;
    *)
      ruby -r"$HOME/Work/usca_runbook/bin/container_maker.rb" -e"ContainerMaker.new.$1" $directory $2
      ;;
  esac
}

lol(){
  seq 200 600 | shuf | xargs -I{} rake 'echo {} > index.txt && runbook:by_index[{}]' ; ~/Tools/pomodoro/5_min_break.pomodoro
}

devent(){
  ruby -rdocker-api -e "Docker::Event.stream{|event| puts event}"
}

notes(){
  "PHID-PROJ-7r2xs43jx6nu3lxukzvy" - unkown fix
  "PHID-PROJ-g4y2xm5clgbufvckccgq" - edge repo scans
  "PHID-PROJ-wh7trolyvtw4j7zxppdn" - known fix
}
