#!/bin/bash
# Manual sync to deployed instance
rsync -rlptvz --rsync-path="sudo rsync" ldregistry/ aws-defra-reg:/opt/ldregistry/
ssh aws-defra-reg sudo chown -R tomcat:tomcat  /opt/ldregistry/
