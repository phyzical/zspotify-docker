build:
	docker build --platform linux/amd64 . -t phyzical/zspotify
run-bash:
	docker run --platform linux/amd64 -it --rm --entrypoint /bin/sh phyzical/zspotify
run-test:
	docker run --platform linux/amd64 -it --rm -u 99:100 -v "${PWD}/zspotify:/app" -v "${PWD}/music:/ZSpotify Music" -v "${PWD}/config:/config" -v "${PWD}/music:/ZSpotify Podcasts" phyzical/zspotify --config-location="/config/zs_config.json" --download="/config/uris.txt"