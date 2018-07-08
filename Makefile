VIRTUAL_ENV ?= venv

# .PHONY: run-dev
# run-dev:
# 	WERKZEUG_DEBUG_PIN=off FLASK_APP=riveter_app.py FLASK_DEBUG=1 $(VIRTUAL_ENV)/bin/flask run

.PHONY: devenv
devenv:
	[ -d $(VIRTUAL_ENV) ] || virtualenv -p python3 $(VIRTUAL_ENV)
	$(VIRTUAL_ENV)/bin/pip install --upgrade pip
	$(VIRTUAL_ENV)/bin/pip install -r requirements-dev.txt

.PHONY: test
test:
	$(VIRTUAL_ENV)/bin/py.test
