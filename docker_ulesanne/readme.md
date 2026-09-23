
# Dockeri ülesanne

Selles kataloogis asub Image-i ehitamiseks loodud `Dockerfile`.

## Image-i ehitamine

Image-i loomiseks `Dockerfile` põhjal kasuta käsku:

```
docker build -t minu-pythoni-app .
```

## Konteineri käivitamine

Kui image on edukalt ehitatud, saab sellest luua ja käivitada töötava konteineri (jääb taustale tööle) järgmise käsuga:

```
docker run -dit --name test-ctr ubuntu bash
```
