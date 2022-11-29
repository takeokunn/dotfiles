function peco_redmine
    set -l project (
        curl -s "https://redmine.openlogi.com/projects.json?limit=100" \
            -H "X-Redmine-API-Key: "$argv[1] \
            | jq -r '.projects[] | "[" + (.id|tostring) + "]" + " " + .name + " (" + .identifier + ")"' \
            | peco
    )
    set -l project_id (string match -r '\d+' $project)

    set -l issue (
        curl -s "https://redmine.openlogi.com/issues.json?limit=100&project_id="$project_id \
            -H "X-Redmine-API-Key: "$argv[1] \
            | jq -r '.issues[] | "[" + (.id|tostring) + "]" + .subject' \
            | peco
    )
    set -l issue_id (string match -r '\d+' $issue)

    echo "https://redmine.openlogi.com/issues/"$issue_id
    open "https://redmine.openlogi.com/issues/"$issue_id
end
