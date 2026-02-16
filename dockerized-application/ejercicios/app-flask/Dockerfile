# 1. Imagen base
FROM rockylinux:9.3

# 2. Combinar comandos y limpiar caché (Ahorra espacio)
RUN dnf update -y && \
    dnf install -y \
    python3 \
    python3-setuptools \
    python3-devel \
    gcc \
    gcc-c++ \
    make \
    python3-pip && \
    dnf clean all

# 3. Instalar librerías de Python
RUN pip3 install --no-cache-dir flask flask-mysql

#4. Copiar la app
COPY app.py /opt/app.py
ENTRYPOINT FLASK_APP=/opt/app.py flask run --host=0.0.0.0


