import os
import json
from google.generativeai import GenerativeAI

class SentimentAnalyzer:
    def __init__(self, api_key=None):
        self.api_key = api_key or os.environ.get('GEMINI_API_KEY')
        if not self.api_key:
            raise ValueError("GEMINI_API_KEY not found in environment variables")
        self.client = GenerativeAI(api_key=self.api_key)

    def analyze_news_sentiment(self, news_text):
        """
        Analyze sentiment of news text using Gemini API
        Returns: sentiment score between -1 (negative) and 1 (positive)
        """
        prompt = f"""
        Analyze the sentiment of the following news text about stocks/markets.
        Provide a sentiment score between -1 (very negative) and 1 (very positive).
        Also provide a brief explanation.
        
        News: {news_text}
        
        Response format:
        {{
            "sentiment_score": <number between -1 and 1>,
            "explanation": "<brief explanation>",
            "confidence": <0-1>
        }}
        """
        
        try:
            response = self.client.generate_text(prompt=prompt)
            result = json.loads(response.text)
            return result
        except Exception as e:
            print(f"Error analyzing sentiment: {str(e)}")
            return {
                "sentiment_score": 0,
                "explanation": "Unable to analyze sentiment",
                "confidence": 0
            }

    def get_stock_recommendation(self, stock_symbol, technical_analysis, news_summary):
        """
        Get AI-powered recommendation for a stock based on technical analysis and news
        """
        prompt = f"""
        Based on the following information about {stock_symbol}:
        
        Technical Analysis:
        {json.dumps(technical_analysis, indent=2)}
        
        News Summary:
        {news_summary}
        
        Provide:
        1. A confidence score (0-100) for investment
        2. Brief explanation why (max 2 sentences)
        3. Key risks to consider
        
        Response format:
        {{
            "confidence_score": <0-100>,
            "recommendation": "<buy/hold/sell>",
            "explanation": "<brief reason>",
            "risks": ["risk1", "risk2"]
        }}
        """
        
        try:
            response = self.client.generate_text(prompt=prompt)
            result = json.loads(response.text)
            return result
        except Exception as e:
            print(f"Error getting recommendation: {str(e)}")
            return {
                "confidence_score": 0,
                "recommendation": "hold",
                "explanation": "Unable to generate recommendation",
                "risks": []
            }