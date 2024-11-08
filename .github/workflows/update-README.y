name: Update README

on:
  push:
    paths:
      - README.gtpl
  workflow_dispatch:

jobs:
  update-readme:
    runs-on: ubuntu-latest
    
    steps:
      - name: Check out the repository
        uses: actions/checkout@v3
        
      - name: Copy README.gtpl to README.md
        run: cp README.gtpl README.md
        
      - name: Commit changes
        run: |
          git config --global user.name "github-actions[bot]"
          git add README.md
          git commit -m "Update"
          git push
        env:
          GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
