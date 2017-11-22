FROM lnls/epics-base:centos-7.4.1708

# Replace epics-dev version so we don't have to rebuild
# all of the epics images
RUN rm -rf /tmp/epics-dev && \
    git clone https://github.com/lnls-sirius/epics-dev /tmp/epics-dev && \
    cd /tmp/epics-dev && \
    git checkout aca0fe61551acd390eeb68ab9c4b149102044434 && \
    ./run-all.sh -o -i -c -n yes
