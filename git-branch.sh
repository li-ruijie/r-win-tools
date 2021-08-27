#!/usr/bin/env bash
function commit-r-version {
    local basedir="$(readlink -f "$1")"
    local rver="$2"
    local dirgit="$basedir/.git"
    local dirver="$basedir/$rver"

    mv "$dirgit" "$dirver/"     && \
        pushd "$dirver"         && \
        git checkout -b "$rver" && \
        git add -A              && \
        git commit -m "$rver"   && \
        mv "$dirver/.git" "$basedir/"
    while [ "$?" -ne 0 ]; do
        sleep 5s
        mv "$dirver/.git" "$basedir/"
    done
    popd
}
VERS=(
    2.06 2.07 2.08 2.09
    2.10 2.11 2.12 2.13
    2.14 2.15 3.00 3.01
    3.02 3.03 3.04 3.05
    4.00)
for i in ${VERS[@]}; do
    commit-r-version "/mnt/d/08-academic/PhD/03-code/00-r/r-tools-vers" "$i"
done
