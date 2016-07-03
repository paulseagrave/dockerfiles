# dockerfiles

A dockerfile for python 3.4 apps built on centos7

This file uses a virtual env for isolation. Although probably not necessary in most cases here is a good reason for doing this:-

It’s true that in many cases, perhaps even most, simply installing stuff into the system Python with Pip works fine; however, for more elaborate applications, you may end up wanting to invoke a tool provided by your base container that is implemented in Python, but which requires dependencies managed by the host. By putting things into a virtualenv regardless, we keep the things set up by the base image’s package system tidily separated from the things our application is building, which means that there should be no unforseen interactions, regardless of how complex the application’s usage of Python might be.

from https://glyph.twistedmatrix.com/2015/03/docker-deploy-double-dutch.html

This image is intended to be built upon by other images (so maybe the CMD and ENTRYPOINT should live in the next layer - possibly evenn the env)
