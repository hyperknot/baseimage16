# baseimage16

**A minimal, clean version of baseimage-docker, including community provided fixes**

See full readme at the original [baseimage-docker repository](https://github.com/phusion/baseimage-docker). 

1.x -> Ubuntu 16.04

2.x -> Ubuntu 18.04

4.x -> Ubuntu 22.04


## How to use
You can use this in your Dockerfile by setting the following FROM line.

```
FROM hyperknot/baseimage16:1.0.8
```

Look up the latest release from the [GitHub releases](https://github.com/hyperknot/baseimage16/releases) page.

## Notable changes

- removed SSH service
- removed pam fix, as in my testing I found Ubuntu 16.04 was not affected anymore
- added support for pre- and post- service shutdown scripts. Just place scripts in `/etc/my_init.pre_shutdown.d` or `/etc/my_init.post_shutdown.d`
- all services stopped by default (you need to enable the ones you need by removing the `down` files)


## All changes

All diffs from the original baseimage-docker can be [seen here](https://github.com/phusion/baseimage-docker/compare/master...hyperknot:master).

