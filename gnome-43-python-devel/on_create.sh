#!/usr/bin/env bash

set -e

dnf -y install vim make python3-devel python3-gobject libadwaita-devel gtk4-devel gobject-introspection-devel
pip install pipenv

echo ". /usr/share/git-core/contrib/completion/git-prompt.sh" >> ~/.bashrc
echo "export PS1='[\[\e[01;34m\]\W\[\e[01;35m\]\$(__git_ps1 \" %s\")\[\e[00;00m\]]$\[\e[00m\] '" >> ~/.bashrc
