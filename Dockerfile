FROM fedora:latest
RUN dnf -y update
RUN dnf -y install wget tar git python3
RUN git clone https://github.com/klomlk/docs.git
WORKDIR docs

CMD ["python3","requete_sql.py"]
