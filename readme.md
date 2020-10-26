* Simple image mirror 

Simple set of images mirrored using [lstags](https://github.com/ivanilves/lstags) 

This can mirror any image that makes use of tags, images available by digest only (openshift etc) need to use relevant mirroring tools (oc)

the mirroring process uses local docker to pull, tag and push. ensure system running script has enough storage.
Due to local storage acting as cache, the registry its pusshing to can be wiped and only images new to local cache will get pushed to registry,
acting as poor mans diff so automated transfers are not requireing to bring in all images every time.


