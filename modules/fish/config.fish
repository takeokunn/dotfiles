# load local.fish
source ~/.config/fish/local.fish
source ~/.config/fish/functions.fish

# initialize
function fish_prompt
    if [ $status -eq 0 ]
        set status_face (set_color green)"(*´ω｀*) < "
    else
        set status_face (set_color red)"｡+ﾟ(∩´﹏'∩)ﾟ+｡ < "
    end
    printf '%s %s' (set_color yellow)(prompt_pwd) $status_face
end

# alias
alias cdd 'cd ~/Desktop'

# cloudsqlproxy projectを指定して、dbproxyを起動
function cloudsqlproxy
  # すでにcloud_sql_proxyジョブがあるなら、sigkill送信する
  set -l pid (ps aux | grep -v grep | grep cloud_sql_proxy | awk '{print $2}')
  if [ $pid ]
    kill -9 $pid
  end
  set -l port 23306
  set -l region asia-northeast1
  set -x gcp_projects game-arena-staging
  set -l target (for i in $gcp_projects; echo $i; end | peco )
  set -l dbname (python3 -c  """
instances = {
  \"game-arena-staging\": \"gadb\"
}
print(instances[\""$target"\"])
  """)
  cloud_sql_proxy -instances=$target:$region:$dbname=tcp:$port
end
