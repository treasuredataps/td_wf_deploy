#!/bin/bash

ls

digdag check
digdag push $td_wf_project_name --project $github_path -r "$(date +%Y-%m-%dT%H:%M:%S%z)"-"$(git show --pretty=format:'%T' | head -n 1)" -e $td_wf_endpoint -X client.http.headers.authorization="TD1 $td_master_apikey"
