#!/bin/bash
baseDir=$(cd `dirname "$0"`;pwd)
[ -z "${BASH_SOURCE[0]}" -o "${BASH_SOURCE[0]}" = "$0" ] || return
if ! [ -x "$(command -v nvim)" ]; then
  echo 'Error: neovim is not installed. Please install neovim firstly!' >&2
  exit 1
fi
if [ ! -d "${HOME}/.config/nvim" ]; then
  mkdir ${HOME}/.config/nvim
fi
if [ -f "${HOME}/.config/nvim/init.vim" ]; then
   echo 'Error: nvim configuration existed!' >&2
  exit 1
fi
cp $baseDir/init.vim ${HOME}/.config/nvim
