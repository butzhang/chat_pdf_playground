FROM python:3.7-alpine
COPY . /app
WORKDIR /app
RUN pip install .
RUN chat_pdf_playground create-db
RUN chat_pdf_playground populate-db
RUN chat_pdf_playground add-user -u admin -p admin
EXPOSE 5000
CMD ["chat_pdf_playground", "run"]
