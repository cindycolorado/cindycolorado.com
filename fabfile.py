#! /usr/bin/env python

from fabric.api import *
from fabric.contrib.project import rsync_project
import os

env.hosts = ['n3kl.cx']
env.user = 'deploy'

def setup():
    local('bundle install ' + '--path ' + os.environ['WORKSPACE'])

def compile():
    local('bundle exec nanoc co')

def sync():
    rsync_project(local_dir='output/',remote_dir='/var/www/www/',delete=True)

def deploy():
    setup()
    compile()
    sync()
