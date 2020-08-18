FROM szyn/docker-digdag:latest

LABEL "com.github.actions.name"="Github Actions for Treasure Wofklow"
LABEL "com.github.actions.description"="Push your project to Treasure Workflow"
LABEL "repository"="https://github.com/treasuredataps/td_wf_deploy"
LABEL "maintainer"="Treasure Data PS <prof-services@treasure-data.com>"

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
