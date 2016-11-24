# An updated version of baseimage-docker, including community provided Ubuntu 16.04 fixes

See full readme at the original [baseimage-docker repository](https://github.com/phusion/baseimage-docker).

I will be checking and merging PRs into this repo regularly.

All diffs from the original baseimage-docker can be [seen here](https://github.com/phusion/baseimage-docker/compare/master...hyperknot:master).

Notable changes:

- removed SSH service
- removed pam fix, as in my testing I found Ubuntu 16.04 was not affected anymore
- added support for pre- and post- service shutdown scripts. Just place a script in `/etc/my_init.pre_shutdown.d` or `/etc/my_init.post_shutdown.d`

