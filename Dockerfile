FROM python:3.12-slim
WORKDIR /app
COPY . .

# This line upgrades pip and suppresses the root warning
RUN pip install --upgrade pip && \
    pip install --root-user-action=ignore flask

EXPOSE 5000
CMD ["python", "app.py"]
