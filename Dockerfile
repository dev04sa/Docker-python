# docker file for myapp.py
# FROM python

# WORKDIR /myapp

# COPY ./myapp.py .
# COPY ./servers.txt .



# CMD ["python", "myapp.py"]


# docker file for api_demo.py

# FROM python

# WORKDIR /myapp

# COPY ./api_demo.py .
# RUN pip install requests



# CMD ["python", "api_demo.py"]

# docker file for sql_demo.py
FROM python

WORKDIR /myapp

COPY ./sql_demo.py .
RUN pip install pymysql
RUN pip install cryptography



CMD ["python", "sql_demo.py"]

