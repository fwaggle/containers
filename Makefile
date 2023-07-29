GH_USER=fwaggle

all: collectd

collectd:
	apko publish --sbom=false collectd.yaml ghcr.io/${GH_USER}/collectd:latest
