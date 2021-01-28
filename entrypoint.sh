#!/bin/bash

digdag check
digdag push $td_wf_project_name -e $td_wf_endpoint -X client.https.headers.authorization="TD1 $td_master_apikey"
