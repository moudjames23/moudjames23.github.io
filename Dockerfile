FROM python:3.11.2-alpine3.17
RUN addgroup app && adduser -S -G app app
USER app
WORKDIR app/
COPY . .
RUN pip install mkdocs
EXPOSE 8000
CMD mkdocs serve -a 0.0.0.0:8000
