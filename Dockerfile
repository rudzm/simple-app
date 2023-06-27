# Pobieramy oficjalny obraz Pythona 3.9
FROM python:3.9

# Ustawiamy zmienne środowiskowe
ENV APP_HOME /app
ENV FLASK_APP app.py
ENV FLASK_RUN_HOST 0.0.0.0
ENV FLASK_RUN_PORT 80
ENV FLASK_ENV production

# Tworzymy folder na naszą aplikację
WORKDIR $APP_HOME

# Kopiujemy plik wymagań i instalujemy zależności
COPY requirements.txt .
RUN pip install -r requirements.txt

# Kopiujemy pliki aplikacji do folderu w kontenerze
COPY . .

# Otwieramy port 5000
EXPOSE 80

# Uruchamiamy aplikację
CMD ["flask", "run"]