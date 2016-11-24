# baseimage16

**An updated version of baseimage-docker, including community provided Ubuntu 16.04 fixes**

See full readme at the original [baseimage-docker repository](https://github.com/phusion/baseimage-docker). I will be checking and merging PRs in this repo regularly.


## How to use
You can use this in your Dockerfile by setting:

```
FROM hyperknot/baseimage16:latest
```

## Notable changes

- removed SSH service
- removed pam fix, as in my testing I found Ubuntu 16.04 was not affected anymore
- added support for pre- and post- service shutdown scripts. Just place scripts in `/etc/my_init.pre_shutdown.d` or `/etc/my_init.post_shutdown.d`


## All changes

All diffs from the original baseimage-docker can be [seen here](https://github.com/phusion/baseimage-docker/compare/master...hyperknot:master).

