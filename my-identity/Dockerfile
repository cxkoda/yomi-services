FROM axiom/rsync-server

RUN apt-get update && \
	apt-get install -y curl && \
	apt-get clean && \
	rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Disabling ssh
#EXPOSE 22
EXPOSE 873

ENTRYPOINT ["/my-entrypoint.sh"]
