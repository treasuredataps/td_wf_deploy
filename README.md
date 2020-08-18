# td_wf_deploy
To create action that can be used to deploy GitHub code to TD

# treasure-workflow-github-continuous-deployment

GitHub Action for Treasure Workflow, for performing a task to push a project to Treasure Workflow with digdag client.

## Input 

- `TD_MASTER_APIKEY`: Treasure Data Master APIKEY (required) (secrets)
- `TD_WF_API_ENDPOINT`: Treasure Workflow API Endpoint (optional)
    - US region (default): api-workflow.treasuredata.com
    - Tokyo region: api-workflow.treasuredata.co.jp
    - EU01 region: api-workflow.eu01.treasuredata.com
- `TD_WF_PROJECT_NAMES`: Treasure Workflow Project Name (required)

## Usage

1 - Go "Settings" > "Secrets", and configure `TD_MASTER_APIKEY` with your master apikey.

2 - Configure this action in your github actions:

```
- uses: actions/checkout@v2
- name: "td wf push"
    uses: treasuredataps/tdw-actions@master
    with:
        td_master_apikey: ${{ secrets.td_master_apikey }}
        td_wf_project_names: your_workflow_name 
        github_path: the path on github
```
