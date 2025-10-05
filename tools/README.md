Tools image
- Provides semgrep, pip-audit, npm, and osv-scanner
- Run scans against mounted repos (build context copies repos into image)
Examples:
  docker-compose run tools semgrep --config=auto /repos/vtm
  docker-compose run tools pip-audit -r /repos/vtm/requirements.txt
  docker-compose run tools osv-scanner --recursive /repos
