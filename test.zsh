#!/usr/bin/env zsh

function test-it()
{
    local params
    params=("${@[@]}")

    if [[ ${params[(I)--python*]} -eq 1 ]]; then
        echo "python param is on"
    fi

    if [[ ${params[(I)--verbose]} -eq 1 ]]; then
        echo "verbose param is on"
    fi
}

function test-it2()
{
    zparseopts -D -E
    # zparseopts is odddly mysterious and hard to use
}
