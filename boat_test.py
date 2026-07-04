import requests
from bs4 import BeautifulSoup

url = "https://www.boat-lifestyle.com/products/nirvana-zenith-pro-wireless-earphones"

headers = {
    "User-Agent": "Mozilla/5.0"
}

response = requests.get(url, headers=headers)

print("Status Code:", response.status_code)

soup = BeautifulSoup(response.text, "html.parser")

product_name = soup.find("h1")

print(product_name.text)