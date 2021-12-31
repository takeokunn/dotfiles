function skylark
    set -l brand_id
    switch $argv
    case "gusto"
        set brand_id 1
    case "bamiyan"
        set brand_id 2
    case "jonathan"
        set brand_id 3
    case '*'
        echo "invalid argument: please input [gusto, bamiyan, jonathan]"
        false
    end

    curl "https://app-data.skylark-app.net/coupon/normals.json" \
        | jq ".[]" \
        | jq "{ brand_id: .brand_id, name: .name, before_price: .before_price, after_price: .after_price, display_number: .display_number }" \
        | jq "select(.brand_id == \"$brand_id\")" \
        | jq "\"[\" + .display_number + \"] \" + .name + \": \" + .before_price + \" → \" + .after_price" \
        | uniq \
        | tr -d '"'
end
