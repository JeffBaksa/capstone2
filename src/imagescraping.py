import os
import sys
import requests
import time
from io import BytesIO
from PIL import Image
from bs4 import BeautifulSoup
from selenium import webdriver

chrome_driver_path = '/Users/jeffreybaksa/Galvanize/capstones/capstone2/Image Scraper/chromedriver'
#os.path.exists(chrome_driver_path) # confirm the path above exists

def imagescrape(search, path):
    path = os.path.expanduser(f"{path}") # splits pi vs non pi
    os.mkdir(path) # creates folder
    search = search.replace(' ', '+') # transforming str into search URL
    url = f'''https://www.google.com/search?as_st=y&tbm=isch&as_q=
              {search}&as_epq=&as_oq=&as_eq=&imgar=&imgcolor=&imgtype=
              &cr=&as_sitesearch=&as_filetype=&tbs=&sfr=vfe&safe=images
           '''
    # Init selenium, searching URL
    driver = webdriver.Chrome(executable_path=chrome_driver_path)
    driver.get(url)
    
    # Parse thru Google Images
    scroll_pause_time = 1
    scroll_height = driver.execute_script('return document.body.scrollHeight') # how long is the page?
    while True:
        driver.execute_script('window.scrollTo(0, document.body.scrollHeight);') # scrolls down to the bottom
        time.sleep(scroll_pause_time)
        new_scroll_height = driver.execute_script('return document.body.scrollHeight')
        if new_scroll_height == scroll_height: # check if scroll height has changed
            try:
                driver.find_element_by_css_selector("input[jsaction='Pmjnye']").click() # click load more images button
                continue
            except:
                break # stop the while loop
        scroll_height = new_scroll_height
    
    # Turn into BeautifulSoup
    page = driver.page_source
    soup = BeautifulSoup(page, 'html.parser')
    images = soup.find_all('img')
    url_strings = [] 
    for i in images:
        pic = i.get('data-src')
        if pic == None:
            continue
        url_strings.append(pic)
        
    # Let me know how many pictures we should expect in the folder
    url_strings = url_strings[1::]
    print(f"Expecting: {len(url_strings)} pics")
    
    # Save the images into the folder
    acc = 0
    for pic in url_strings:
        try:
            response = requests.get(str(pic)) # cast pic as string, originally saved as the literal URL
            img = Image.open(BytesIO(response.content)) # Use Bytes to transform the content into a form that Image.open can read
            img.save(f"{path}/{acc}.jpg")
            acc += 1
        except:
            print(f"Picture {acc} bad") # prints which images aren't able to be saved
            acc += 1
            print(pic) # provides link to the image that can't be saved
    driver.close()