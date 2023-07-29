# fwaggle's container images

These are for my own purposes, but if you find them useful, knock
yourself out. No warranty of any kind is included, I reserve the right
to do something dumb. They're pretty easy to build, if that's a concern
just knock the sources off and build your own.

To upload your own images, don't forget to use `apko login` to log in to
GHCR (or tweak the makefile to point at your own registry). Then `make`
should "just work". If it doesn't, please refer to the second sentence
of paragraph 1.

## collectd

A minimal collectd image with a handful of modules. It's got a big of
magic included so I can use it as a DaemonSet on Kubernetes nodes, but
other than that no configuration is provided. I use the magic setting
like so:

```
        env:
          - name: COLLECTD_HOSTNAME
            valueFrom:
              fieldRef:
                fieldPath: spec.nodeName
```
