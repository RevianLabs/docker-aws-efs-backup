# Docker AWS EFS Backup

Docker image for AWS ECS/Fargate backup to EFS
The image is built and uploaded to [Docker Hub](https://hub.docker.com/r/revianlabs/aws-efs-backup).

Maintained tag:

- Apline
- Debian
- Centos 8

## Usage

The resulted container requires the following arguments:

- S3_BUCKET_NAME: The name of the S3 bucket used for the backup. Ensure it is created and accessible by the ECS execution role. (Default: "efs_backup")
- MAX_FILE_AGE: The max file age in days considered for backup. Files older than this value will be backed up. (Default: 21 days)

## License

MIT License
