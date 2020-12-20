# Build and run example

```
docker build --tag=phpunit-docs-builder .

docker run --rm -v "${PWD}/output:/output" phpunit-docs-builder
```