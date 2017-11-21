FROM lnls/epics-base:debian-9.2

# Replace epics-dev version so we don't have to rebuild
# all of the epics images
RUN rm -rf /tmp/epics-dev && \
    git clone https://github.com/lnls-sirius/epics-dev /tmp/epics-dev && \
    cd /tmp/epics-dev && \
    git checkout bc310197e5e42ec2edf6e1ca076dd33769c263e6 && \
    ./run-all.sh -o -i -c -n yes
