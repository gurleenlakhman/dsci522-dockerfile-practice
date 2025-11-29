FROM quay.io/jupyter/minimal-notebook:afe30f0c9ad8

COPY conda-linux-64.lock /tmp/conda-linux-64.lock

RUN mamba create --name dsci522-env --file /tmp/conda-linux-64.lock && \
    mamba clean --all -f -y

ENV PATH="/opt/conda/envs/dsci522-env/bin:${PATH}"
