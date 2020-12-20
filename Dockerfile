FROM python:3-alpine

RUN apk add git make

ARG BRANCH=master

RUN git clone --depth=1 https://github.com/sebastianbergmann/phpunit-documentation-english.git /docs -b ${BRANCH}

WORKDIR /docs

RUN pip install -r requirements.txt

ENTRYPOINT ["make", "BUILDDIR=/output"]
