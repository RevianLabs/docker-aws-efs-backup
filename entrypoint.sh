#!/bin/bash

cd /efs-volume

find * -type f -mtime +$MAX_FILE_AGE -exec bash -c '
    f=${1#./}
    aws s3 cp --follow-symlink "$f" s3://$S3_BUCKET_NAME/"$f"' _ {} \;
