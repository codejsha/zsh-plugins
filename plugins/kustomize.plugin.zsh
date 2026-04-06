#!/usr/bin/env zsh

alias kk="kubectl kustomize"
alias kkkaf="kubectl kustomize | kubectl apply --recursive -f -"
alias kkkrmf="kubectl kustomize | kubectl delete --recursive -f -"

alias kmb="kustomize build"
alias kmbkaf="kustomize build . | kubectl apply -f -"
alias kmbkrmf="kustomize build . | kubectl delete --recursive -f -"
