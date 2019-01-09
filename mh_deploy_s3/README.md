# GitHub Action: MH_Deploy to S3
Package `mh_deploy.sh` and upload it to S3 to make it available on http://mh-deploy.magehost.pro/

## Usage
```
workflow "On Push: MH_Deploy to S3" {
  on = "push"
  resolves = ["MH_Deploy_S3"]
}

action "MH_Deploy_S3" {
  uses = "magehost/github_actions/mh_deploy_s3@master"
  secrets = [
    "GITHUB_TOKEN",
    "AWS_ACCESS_KEY_ID",
    "AWS_SECRET_ACCESS_KEY",
  ]
  args = [
    "path/to/include_file.sh",
    "path/to/include_file_2.sh",
  ]
}
```