define-command -params 5 toggle-map %{ evaluate-commands %sh{
    scope=$1
    mode=$2
    key=$3
    on=$4
    off=$5

    echo "map $scope $mode $key %{:$on-toggle<ret>}"

    echo "define-command $on-toggle %{"
    echo "$on"
    echo "map $scope $mode $key %{:$off-toggle<ret>}"
    echo "}"


    echo "define-command $off-toggle %{"
    echo "$off"
    echo "map $scope $mode $key %{:$on-toggle<ret>}"
    echo "}"
}}
