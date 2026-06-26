FROM ubuntu:18.04
ENV DB_PASSWORD="moja_super_tajna_lozinka_123"
USER root
RUN apt-get update && apt-get install -y curl
CMD ["/bin/bash"]