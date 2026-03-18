import os

class Config:
    # General configurations
    DEBUG = os.environ.get('DEBUG', 'False') == 'True'
    TESTING = os.environ.get('TESTING', 'False') == 'True'
    SECRET_KEY = os.environ.get('SECRET_KEY', 'your_secret_key')

    # Database configurations
    SQLALCHEMY_DATABASE_URI = os.environ.get('DATABASE_URL', 'sqlite:///default.db')
    SQLALCHEMY_TRACK_MODIFICATIONS = False

    # Other configurations can be added here
