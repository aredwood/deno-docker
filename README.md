# Deno Docker
This is a docker file which when built will contain the latest deno release by default.


## Sample Usage

## Use the interpreter
`docker run -it aredwood/deno`

## Run the Deno welcome script
`docker run aredwood/deno run https://deno.land/std/examples/welcome.ts`

## Demonostrate this repo
```
PS> $pwd = (pwd).path
PS> docker run -p 8000:8000 --volume ($pwd + ":/app") aredwood/deno run --allow-net server.ts 
```