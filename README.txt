


STEPS: 

Restarting PgAdmin Pokemon Database: 
- Expand servers in left panel
- Click on PostgreSQL 17
- Enter Password: Pokemon741852963!

Open Docker

Open Windows Powershell

Restart Redis: 
- docker start redis-limiter (powershell)
- docker ps (powershell)

Restarting Flask in Powershell: (run these commands)
- cd C:\Users\SkyBerry\Documents\Pokemon_Database\Python_Scripts
- $env:FLASK_APP="app.py"
- python -m flask run --debug (powershell) or python -m flask run --host=0.0.0.0 --port=5000 --debug (port 5000 specifically)

Website: 
http://127.0.0.1:5000

---------------------------------
Github (use terminal or Powershell): 

Move to project directory
cd "C:\Users\SkyBerry\Documents\Pokemon_Database\Python_Scripts"

Check which files Git is tracking:
git status

Add all files to Git:
git add .

Commit your changes: 
git commit -m "Initial commit - Uploading project"

Push project to Github:
git branch -M main
git push -u origin main

---------------------------------

Pokemon TCG API Key:
POKEMON_TCG_API_URL = "https://api.pokemontcg.io/v2/cards"
API_KEY = "7ac8a834-d462-4ef3-ac8f-2c88eb1c87c0"  # Replace with your API key


PSA API KEY: 

Access Token:
_Rtc5r2GYL5IIzfIgZU9c_62r7x5qsDdM-SPdXDyB0ozlEirvRJ6cvJz3Zd7clsS331yjkB-f3rSvdB6X-FqAgoSzZu6ipEbTDJxJ4qJs8wL5Txi2IrQ2YWjxD5VHNyQfuclGp4B56uj2laQEZCcp-yJReuwIEMZwETzbEnC561mwxqKtSFXui9XNHBv12FYvEmbFXY2Mhs-1sekXoawdJdyFwdIkUTtwUjPqxL1pMcN_dMUHw9iulrIO5Quu1BLv-rMoCnHUUKUNmn5e48oFj6VxnLzjb7SCE36zxfpXXHYWKIx

PostgreSQL Pass; Pokemon741852963!
user: postgres

---------------------------------

PGAdmin SQL Quick commands: 

SELECT COUNT(*) 
FROM pokemon_cards 
WHERE tcg_id IS NULL;

SELECT card_name, set_name, tcg_url, tcg_url_redir 
FROM pokemon_cards 
WHERE tcg_id IS NULL;


---------------------------------

Price_Table PGAdmin Format:

id	tcg_id       	subtypename	marketprice   lowprice   midprice   highprice

1	200350	        Normal	             3.50
2	200350	        Foil	             5.75
3	200350	        Reverse Holo	     4.20

---------------------------------

TCGPlayer hash#:

The TCGPlayer information for a given card. ALL PRICES ARE IN US DOLLARS.
Property		Description
url string		The URL to the TCGPlayer store page to purchase this card.
updatedAt string	A date that the price was last updated. In the format of YYYY/MM/DD
prices hash		A hash of price types. All prices are in US Dollars. See below for possible values.

The following price types are available:

normal, holofoil, reverseHolofoil, 1stEditionHolofoil and 1stEditionNormal.

Each price type can have the following fields (all provided via TCGPlayer):
Property			Description
low decimal			The low price of the card
mid decimal			The mid price of the card
high decimal			The high price of the card
market decimal			The market value of the card. This is usually the best representation of what people are willing to pay.
directLow decimal		The direct low price of the card
cardmarket hash#

The cardmarket information for a given card. ALL PRICES ARE IN EUROS.
Property			Description
url string			The URL to the cardmarket store page to purchase this card.
updatedAt string		A date that the price was last updated. In the format of YYYY/MM/DD
prices hash			A hash of price types. All prices are in Euros. See below for possible values.

The following prices are provided by cardmarket and made available via this API:
Property			Description
averageSellPrice decimal	The average sell price as shown in the chart at the website for non-foils
lowPrice decimal		The lowest price at the market for non-foils
trendPrice decimal		The trend price as shown at the website (and in the chart) for non-foils
germanProLow decimal		The lowest sell price from German professional sellers
suggestedPrice decimal		A suggested sell price for professional users, determined by an internal algorithm; this algorithm is controlled by cardmarket, not this API
reverseHoloSell decimal		The average sell price as shown in the chart at the website for reverse holos
reverseHoloLow decimal		The lowest price at the market as shown at the website (for condition EX+) for reverse holos
reverseHoloTrend decimal	The trend price as shown at the website (and in the chart) for reverse holos
lowPriceExPlus decimal		he lowest price at the market for non-foils with condition EX or better
avg1 decimal			The average sale price over the last day
avg7 decimal			The average sale price over the last 7 days
avg30 decimal			The average sale price over the last 30 days
reverseHoloAvg1 decimal		The average sale price over the last day for reverse holos
reverseHoloAvg7 decimal		The average sale price over the last 7 days for reverse holos
reverseHoloAvg30 decimal	The average sale price over the last 30 days for reverse holos


---------------------------------
Scraping price data from TcgPlayer: 

https://www.reddit.com/r/mtgfinance/comments/17b0eox/tcg_player_just_updated_the_price_guide_its_a/



Where do you get the json data?
->
Depends what info you want but for basic price info you just need the TCG ID of the card which is in the card's URL. For example, 
Dockside Extortionist from C19 is 196486, so json price data is here: https://mpapi.tcgplayer.com/v2/product/196486/pricepoints?mpfev=2042

OR https://mpapi.tcgplayer.com/v2/product/610390/pricepoints

When you click on the link, you get this: 

	
0	
printingType	"Normal"
marketPrice	34.67
buylistMarketPrice	null
listedMedianPrice	59.98
1	
printingType	"Foil"
marketPrice	null
buylistMarketPrice	null
listedMedianPrice	null


---------------------------------





