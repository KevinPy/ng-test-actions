workflow "Test" {
  on = "push"
  resolves = ["GitHub Action for npm-1"]
}

action "GitHub Action for npm" {
  uses = "actions/npm@c555744"
  runs = "install"
}

action "GitHub Action for npm-1" {
  uses = "actions/npm@c555744"
  needs = ["GitHub Action for npm"]
  runs = "lint"
}

workflow "New workflow" {
  on = "push"
}
