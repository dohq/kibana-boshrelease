## Kinaba BOSH Release

```
./add-blobs.sh
bosh create-release --name=kibana --force --timestamp-version --tarball=/tmp/kibana-boshrelease.tgz && bosh upload-release /tmp/kibana-boshrelease.tgz  && bosh -n -d kibana deploy manifest/kibana.yml --no-redact
```

