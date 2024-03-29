FROM centos:7

# S3_BUCKET_NAME = the name of the S3 bucket used for the backup. Ensure it is created and accessible by the ECS execution role.
ENV S3_BUCKET_NAME "efs_backup"

# MAX_FILE_AGE = files older than this value will be backed up
ENV MAX_FILE_AGE 21

RUN yum -y update && \
    yum -y install epel-release && \
    yum -y install python-pip jq curl wget sudo && \
    pip install awscli

COPY entrypoint.sh /entrypoint.sh

VOLUME [ "/efs-volume" ]

ENTRYPOINT [ "/entrypoint.sh" ]
