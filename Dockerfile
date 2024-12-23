FROM alpine/ansible

RUN ansible-galaxy collection install community.general \
    && apk add --update --no-cache ansible-lint nodejs

ENTRYPOINT []
CMD ["ansible", "--help"]