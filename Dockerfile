FROM lnls/epics-base:base-3.14-debian-9

RUN cd /tmp/epics-dev && \
    ./run-all.sh -o -i -c -n yes
