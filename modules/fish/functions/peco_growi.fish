function peco_growi
    set -l path (echo $argv[2] | sort | uniq | peco)
    set -l my_path (
        curl -s "https://wiki.openlogi.com/_api/pages.list?path=$path&access_token="$argv[1]"&limit=1000" \
            -H "Content-Type: application/json" \
            | jq -r ".pages[].path" \
            | peco
    )
    echo "https://wiki.openlogi.com"$my_path
    open "https://wiki.openlogi.com"$my_path
end
