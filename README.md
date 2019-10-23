# SINGLETON SD - SCRIPTS - JAVA

This project contains Linux bash scripts to work with java projects.

> The **main repository** is hosted in [gitlab.com/singletonsd/scripts/java](https://gitlab.com/singletonsd/scripts/java.git) but it is automatically mirrored to [github.com/singletonsd](https://github.com/singletonsd/scripts-java.git), [github.com/patoperpetua](https://github.com/patoperpetua/scripts-java.git) and to [gitlab.com/patoperpetua](https://gitlab.com/patoperpetua/scripts-java.git). If you are in the Github page it may occur that is not updated to the last version.

## AVAILABLE SCRIPTS

### UPDATE VERSION

It updates the version of a pom file. It adds the timestamp to the version and if **MVN_SNAPSHOT** is defined or has one argument, it also add *-SNAPSHOT*.

```bash
curl -s https://singletonsd.gitlab.io/scripts/java/latest/java_update_version.sh | bash /dev/stdin
```

It can be downloaded by:

```bash
curl -o java_update_version.sh -L https://singletonsd.gitlab.io/scripts/java/latest/java_update_version.sh
```

## DOWNLOAD

All scripts are available also inside a zip file under [this url](https://singletonsd.gitlab.io/scripts/java/latest/scripts.zip). Or you can execute the following to download:

```bash
mkdir -p binaries && \
curl -o binaries/scripts.zip -L https://singletonsd.gitlab.io/scripts/java/latest/scripts.zip && \
cd binaries && unzip scripts.zip && mv src/* . && rm -r src && rm -r scripts.zip && cd ..
```

## GIT HOOK

You can setup shellcheck to be run before a commit. To do that just execute the following script under your git repository:

```bash
curl -s https://singletonsd.gitlab.io/scripts/common/latest/bash_script_test_hook_installer.sh | bash /dev/stdin
```

## STRUCTURE

Master branch is setup as latest folder. To use an specific version, put the version name before the file name like:

```url
https://singletonsd.gitlab.io/scripts/java/latest/bash_script_test_standalone.sh
https://singletonsd.gitlab.io/scripts/java/develop/bash_script_test_standalone.sh
https://singletonsd.gitlab.io/scripts/java/v0.0.2/bash_script_test_standalone.sh
```

## DOCUMENTATION

- [Shellcheck](https://github.com/koalaman/shellcheck).

## TODO

- [X] Fix documentation.
- [X] Add script to download test script from gitlab pages.
- [X] Zip all scripts and put inside pages.
- [ ] Create a docker image with all scripts inside.
- [ ] Improve generators. Add more information.

----------------------

© [Singleton SD](http://www.singletonsd.com), France, 2019.
