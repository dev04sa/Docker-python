# Project Title: Multi-Component Dockerized Python Applications

## Overview

This project demonstrates how to containerize multiple Python applications using Docker. It includes three distinct Python scripts (`myapp.py`, `api_demo.py`, and `sql_demo.py`), each with its own Dockerfile specifying how to build and run the application in a Docker container.

## Project Structure

```
├── myapp.py
├── api_demo.py
├── sql_demo.py
├── servers.txt
├── Dockerfile_myapp
├── Dockerfile_api_demo
├── Dockerfile_sql_demo
└── README.md
```

### Files

- **myapp.py**: A sample Python application.
- **api_demo.py**: A Python application demonstrating API calls using the `requests` library.
- **sql_demo.py**: A Python application demonstrating interaction with a MySQL database using `pymysql` and `cryptography` libraries.
- **servers.txt**: A text file used by `myapp.py`.
- **Dockerfile_myapp**: Dockerfile for `myapp.py`.
- **Dockerfile_api_demo**: Dockerfile for `api_demo.py`.
- **Dockerfile_sql_demo**: Dockerfile for `sql_demo.py`.
- **README.md**: This README file.

## Dockerfiles

### Dockerfile for `myapp.py`

```dockerfile
# Use the official Python base image
FROM python

# Set the working directory in the container
WORKDIR /myapp

# Copy the Python script and any necessary files into the container
COPY ./myapp.py .
COPY ./servers.txt .

# Define the command to run the application
CMD ["python", "myapp.py"]
```

### Dockerfile for `api_demo.py`

```dockerfile
# Use the official Python base image
FROM python

# Set the working directory in the container
WORKDIR /myapp

# Copy the Python script into the container
COPY ./api_demo.py .

# Install necessary Python packages
RUN pip install requests

# Define the command to run the application
CMD ["python", "api_demo.py"]
```

### Dockerfile for `sql_demo.py`

```dockerfile
# Use the official Python base image
FROM python

# Set the working directory in the container
WORKDIR /myapp

# Copy the Python script into the container
COPY ./sql_demo.py .

# Install necessary Python packages
RUN pip install pymysql
RUN pip install cryptography

# Define the command to run the application
CMD ["python", "sql_demo.py"]
```

## Building and Running the Docker Containers

1. **Build and run `myapp.py` container:**
    ```sh
    docker build -f Dockerfile_myapp -t myapp .
    docker run --rm myapp
    ```

2. **Build and run `api_demo.py` container:**
    ```sh
    docker build -f Dockerfile_api_demo -t api_demo .
    docker run --rm api_demo
    ```

3. **Build and run `sql_demo.py` container:**
    ```sh
    docker build -f Dockerfile_sql_demo -t sql_demo .
    docker run --rm sql_demo
    ```

## Contributing

Contributions are welcome! Please fork this repository and submit pull requests for any features, bug fixes, or improvements.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Contact

For any questions or suggestions, feel free to contact the project maintainer.

---

Thank you for using this project! Happy coding!
