codebrag-docker
===============

Env
---

`REPOS` repos to get cloned and watched by codebrag
`GITHUB_USER` github user to use for cloning
`GITHUB_TOKEN` github token/password to use

Usage
-----
```bash
docker run --name codebrag -d -p 8080:8080 -e "REPOS=paschdan/codebrag-docker paschdan/testrepo" -e GITHUB_USER=some_user -e TOKEN=some_token -v $PWD/data:/data paschdan/codebrag
```
