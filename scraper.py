import requests
from bs4 import BeautifulSoup
import pandas as pd

url = "https://www.boat-lifestyle.com/collections/true-wireless-earbuds"

headers = {
    "User-Agent": "Mozilla/5.0"
}

response = requests.get(url, headers=headers)

print("Status Code:", response.status_code)

soup = BeautifulSoup(response.text, "html.parser")

print(soup.title.text)