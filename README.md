# Deno Docker
This is a docker file which when built will contain the 1.0.0 deno release by default.

## Building
Building the latest
`docker build -t deno .`

## Sample Usage
`docker run deno run -p 8080:8080 --allow-net server.ts`