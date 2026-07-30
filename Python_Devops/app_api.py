from fastapi import FastAPI

from healthcheck import SYSTEM_CHECK

app = FastAPI(title="Devops Utilities API")

@app.get("/hello")

def hello():
    return {"message": "Hello, World!"}




@app.get("/systemcheck")
def systemcheck():
    return SYSTEM_CHECK()