dl(){
  docker ps -l --filter "status=running" --format "{{.Names}}"
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

dra(){
  docker rm $(docker ps -a -q)
}

drmi(){
  docker rmi $(docker ps -a -q)
}

neat(){
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

load_node(){
  nvm use "$(jq .engines.node package.json | tr -d '"')"
}

load_npm(){
  yarn global add npm@"$(jq .engines.npm package.json | tr -d '"')"
}

load_yarn(){
  npm install yarn@"$(jq .engines.yarn package.json | tr -d '"')"
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

test_parse(){
  ruby -ryarnlock -e "Yarnlock.parse('shit.json')"
}

test_stringify(){
  ruby -ryarnlock -e "Yarnlock.stringify('shit.json')"
}

myknitter(){
  ruby -rknitter -rpry -e "k = Knitter::Yarn.new('./'); binding.pry; puts 'done'"
}

usca(){
  runbook exec --auto --start-at=1.1 runbooks/bl_upgrade.rb
}

