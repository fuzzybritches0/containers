#Settings for docker
ENVS=(DBS_UID=$(id -u) DBS_GID=$(id -g))
RUN=(--cap-add SYS_ADMIN --security-opt apparmor:unconfined)
CONT_USER_ID=0
CONT_GROUP_ID=0
#CONT_USER=nobody
#CONT_HOME=/home/nobody
