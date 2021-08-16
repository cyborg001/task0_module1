build:  ## Crea el sitio web con hugo
	hugo
.PHONY: clean
clean:  ## Limpia el directorio dist/
	rm -r dist/*
post:	## Crea un nuevo post con las varialbes de entorno POST_NAME y POST_TITLE
	hugo new content/posts/$(POST_NAME).md
	echo '---
	title: "$(POST_TITLE)"
	date: 2019-03-26T08:47:11+01:00
	draft: true
	---'
help:	## Imprime la informacion de todos los comandos
	cat makefile 2>/dev/null | grep -v 'cat' | grep '##'


