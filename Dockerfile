# got errors with 3.10 and 3.11
FROM python:3.8-slim-buster
RUN pip install poetry
# ADD ./part-01-hello-world /fastapi 
# ADD ./part-02-path-parameters /fastapi 
# ADD ./part-03-query-parameters /fastapi 
# ADD ./part-04-pydantic-schemas /fastapi 
# ADD ./part-05-basic-error-handling /fastapi 
# ADD ./part-06-jinja-templates /fastapi 
ADD ./part-06b-basic-deploy-linode /fastapi 
WORKDIR "/fastapi"
RUN ls
RUN poetry install 
# RUN poetry run ./run.sh
EXPOSE 8001
