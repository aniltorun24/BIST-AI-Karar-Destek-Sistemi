from fastapi import FastAPI

app = FastAPI()

@app.get("/stocks")
async def get_stocks():
    return {"message": "List of stocks"}

@app.get("/confidence_scores")
async def get_confidence_scores():
    return {"message": "Confidence scores"}

@app.get("/sector_heatmap")
async def get_sector_heatmap():
    return {"message": "Sector heatmap"}
