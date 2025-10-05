This repo is an attempt to join the SaintCon AppSec community walkthroughs with a challenge archive.

## Dependencies
The walkthough code requires Retype to compile it.
The walkthrough's need compiled before building the stack.
`retype build`

## Building

`./quickstart.sh`
`docker compose build`

## Running

`docker compose up`

Once everything is build and running in Docker the entry point is at http://localhost:8080/

Each of the challenge projects can either be opened directly or through the links on their corresponding challenge page.

## Challenges

### 2024 - VTM Broken Access Control
Originally found at https://github.com/sethlaw/vtm-saintcon

### 2023 - SQLi
There have been various "sources" for this challenge.  The one used in this project is from https://github.com/smanesse/saintcon-appsec-sqli-walkthrough

#### 
https://github.com/smanesse/saintcon-2023-beginner-challenge 
forked from 
https://github.com/wolfleyb/owasp-saintcon-2023-beginner-challenge 
clone of
https://github.com/appsecco/sqlinjection-training-app

#### 
https://github.com/smanesse/saintcon-appsec-sqli-walkthrough
clone of
https://github.com/appsecco/sqlinjection-training-app

### 2022 - XSS


## Walkthroughs
The original walkthrough repo is found at https://github.com/sethlaw/appsec-community

### Tools
The tools that the walkthroughs train on are not explicitly installed as part of this project and will need to be installed on the host machine.

### Vulnerable repos
Some of the walkthroughs reference using a vulnerable repo.  That repo is not installed as part of this stack

## TODO
- unify/update style
- unify all front ends by combining lab-portal, vtm-app, and sqli-www into a single image
- Add more 2025 info
- Add tools to the lab machine stack?
- Add more content to the challenge pages besides just a link to that particular challenge
- Use seperate repo forks rather than an uber repo
