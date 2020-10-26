#!/bin/bash

export LSTAGS_ARGS="-j /var/lib/import/plays/auth.json -P --push-registry=registry.therealworld:7000 -c6"
lstags -f k8s.gcr.io.yml --push-prefix=gcr.io/k8s-artifacts-prod $LSTAGS_ARGS
lstags -f gcr.io.yml --push-prefix=gcr.io $LSTAGS_ARGS
lstags -f redhat.io.yml --push-prefix=registry.redhat.io $LSTAGS_ARGS
#lstags -f docker.io.yml --push-prefix=docker.io $LSTAGS_ARGS
