import pandas as pd
import numpy as np

class TechnicalAnalyzer:
    def __init__(self, data):
        self.data = data

    def calculate_rsi(self, period=14):
        delta = self.data['Close'].diff()
        gain = (delta.where(delta > 0, 0)).rolling(window=period).mean()
        loss = (-delta.where(delta < 0, 0)).rolling(window=period).mean()
        rs = gain / loss
        rsi = 100 - (100 / (1 + rs))
        return rsi

    def calculate_moving_average(self, period=14):
        return self.data['Close'].rolling(window=period).mean()

    def calculate_exponential_moving_average(self, period=14):
        return self.data['Close'].ewm(span=period, adjust=False).mean()

    def calculate_all_indicators(self):
        self.data['RSI'] = self.calculate_rsi()
        self.data['SMA'] = self.calculate_moving_average()
        self.data['EMA'] = self.calculate_exponential_moving_average()
        return self.data

# Example usage:
# df = pd.DataFrame({'Close': [120, 121, 122, 123, 121, 125, 126]})
# analyzer = TechnicalAnalyzer(df)
# df_with_indicators = analyzer.calculate_all_indicators()