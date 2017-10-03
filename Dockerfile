FROM lnls/epics-base

RUN cd /tmp/epics-dev && \
    ./run-all.sh -o -i -c -n yes
