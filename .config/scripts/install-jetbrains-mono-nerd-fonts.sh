#!/bin/bash
# Install JetbrainsMono Nerd Fonts

github_base_url=kgithub.com
github_api_base_url=api.github.com
nerd_fonts_repos_url=https://$github_api_base_url/repos/ryanoasis/nerd-fonts/releases/latest

while getopts ":n:l" opt; do
  case $opt in
    n) 
      nerd_fonts_latest_ver="$(curl -s $nerd_fonts_repos_url | jq -r ".tag_name")"
      nerd_fonts_download_url=https://$github_base_url/ryanoasis/nerd-fonts/releases/download/$nerd_fonts_latest_ver/$OPTARG
      fonts_name="$OPTARG" | awk '{split($1,arr,".");print arr[1]}'
      
      curl -L -o /tmp/$OPTARG $nerd_fonts_download_url

      mkdir -p ~/.local/share/fonts

      unzip -o /tmp/$OPTARG -d ~/.local/share/fonts/$fonts_name

      fc-cache -v

      exit 1
      ;;
    l) 
      nerd_fonts_list="$(curl -s $nerd_fonts_repos_url | jq -r ".assets[].name")" | cur -d\. f1
      echo $nerd_fonts_list
      exit 1
      ;;
    *) 
      echo "Please Use Args -n  To Input Fonts Name! Use Args -l To Get Nerd Fonts List."
      exit 1
  esac
done
