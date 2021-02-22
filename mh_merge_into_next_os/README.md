# GitHub Action: Merge into Next OS

## Usage
```
workflow "On Push: MH Merge into Next OS" {
  on = "push"
  resolves = ["MH_Merge"]
}

action "MH_Merge" {
  uses = "magehost/github_actions/mh_merge_into_next_os@master"
  secrets = [
    "GITHUB_TOKEN",
  ]
}
```