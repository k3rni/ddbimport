release: 
	if [ "${GITHUB_TOKEN}" == "" ]; then echo "Set the GITHUB_TOKEN environment variable"; fi
	./push-tag.sh
	goreleaser --rm-dist
