FROM lnls/epics-base:base-3.16-debian-9.2

ENV COMMIT base-3.16

RUN git clone https://github.com/lnls-sirius/epics-dev.git /tmp/epics-dev && \
    cd /tmp/epics-dev && \
    git checkout ${COMMIT} && \
    ./run-all.sh -o -i -c -r yes && \
    cd / && \
    rm -rf /tmp/epics-dev && \
    rm -rf /var/lib/apt/lists/*
