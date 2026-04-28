FROM python:3-9-6-slim-bullseye
WORKDIR /docker

# Install dependencies
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

#Copy source code
COPY ./ ./
CMD ['python3','-m','flask','--app','loan', 'run','--host','0.0.0.0']