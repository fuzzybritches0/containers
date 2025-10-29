# containers - v0.1 - docker container management for developers

Containerise all your different development environments.

### The following commands are understood:
- help          - Show this help message.
- create {name} - Create a new containers source instance.
- build {name}  - Build a docker container from a containers source instance.
- clean {name}  - Clean-up stale docker container builds.

{name} is always mandatory.
{name} must be at least 4 characters long.
{name} must not end in 'bg'.
{name} is case-insensitive.
{name} must be alphanumeric, underscores allowed only between first and last characters (a-z_0-9).

After creating and building, the container can be entered on the command line by its name alone.

```
user@host:~$ container_name
user@container_name:~$ exit
user@host:~$
```

Giving its name and a command will run that command inside the container when inside the container directory.

```
user@host:~$ cd CONTAINER_NAME
user@host:~/CONTAINER_NAME$ container_name ls -a
.bash_history .cache      .config .git .local
.bashrc       .gitconfig  miniconda3 ...
user@host:~/CONTAINER_NAME$
```

To run a command inside the container in background append 'bg' to the container's name.

```
user@host:~$ cd CONTAINER_NAME
user@host:~/CONTAINER_NAME$ container_namebg bin/sshd
user@host:~/CONTAINER_NAME$
```

For each containers source instance, a directory in $HOME will be created.
Two symbolic links will also be created for each instance in $HOME/bin; one ending in bg.
You may set the directory for containers source instances in $HOME/.config/containers/conf.sh.
The default is: $HOME/containers

### bootstrap_on example

Copy BOOTSTRAP_ON into $HOME and containers/bootstrap_on into your containers instances directory.

Then call,

```
user@host:~$ containers create bootstrap_on
```

to have the symbolic links created. After that call,

```
user@host:~$ containers build bootstrap_on
```

to build the container.

Then do:

```
user@host:~$ cd ~/BOOTSTRAP_ON/debminbase
user@host:~$ bootstrap_on bootstrap-on
user@host:~$ ./docker.sh
```

Now you have a Debian 13 (trixie) base container, build from scratch, ready in Docker to use as a base to build upon.

Happy coding!
