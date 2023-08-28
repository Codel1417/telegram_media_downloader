from python:3.11.5-slim


RUN mkdir -p /usr/app
WORKDIR /usr/app
COPY --chown=1000:1000 . .
RUN pip install --no-cache-dir -r requirements.txt
RUN python -m compileall -f .
RUN chown 1000:1000 -R .
RUN mkdir -p /usr/data
RUN chown 1000:1000 /usr/data
USER 1000
WORKDIR /usr/data

VOLUME /usr/data

CMD ["python", "/usr/app/media_downloader.py"]