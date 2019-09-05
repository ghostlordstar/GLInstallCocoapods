#!/bin/bash

errorInfo=$1

if [[ $errorInfo =~ 'error' ]]; then
    
    echo "error : ${errorInfo}"
    echo
fi