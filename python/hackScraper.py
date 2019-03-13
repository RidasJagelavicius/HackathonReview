# Utilizes BeautifulSoup to scrape mlh.io for Hackathon Info
# Ridas Jagelavicius

import bs4 as bs #Prevents clashing with bs3 or future bs versions
import requests #For grabbing urls as sources

#Open a connection to the site and create a BeautifulSoup object for manipulation
source = requests.get('https://mlh.io/seasons/na-2019/events/')
soup = bs.BeautifulSoup(source.text, 'lxml') #lxml is our html parser

#Creates a new file, returns error if it exists. Encoding becomes UTF8 to compensate for accented characters
file = open("HackathonInfo.txt", "x", encoding="UTF8")

#Scrape the site for desired info and store in variables
for div in soup.find_all('div', class_='event-wrapper'):
    hackName = div.find('h3', itemprop='name').text
    startDate = div.find('meta', itemprop='startDate').get('content')
    endDate = div.find('meta', itemprop='endDate').get('content')
    city = div.find('span', itemprop='addressLocality').text
    region = div.find('span', itemprop='addressRegion').text
    site = div.find('a').get('href')
    logo = div.find('div',class_='event-logo').find('img').get('src')
    img = div.find('div',class_='image-wrap').find('img').get('src')
    
    #Write info to file
    file.write(hackName + "\n")
    file.write(startDate + "\n")
    file.write(endDate + "\n")
    file.write(city + "\n")
    file.write(region + "\n")
    file.write(site + "\n")
    file.write(logo + "\n")
    file.write(img + "\n\n")

#Close the file; guarantees that all info was gathered
file.close()

#Display that the process has been completed
print("Content successfully scraped")
