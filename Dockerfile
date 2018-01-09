FROM lnls/epics-base:debian-9.2

RUN cd /tmp/epics-dev && \
    ./run-all.sh -o -i -c -n yes
