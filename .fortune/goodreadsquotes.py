#! /usr/bin/env python
# -*- coding: utf-8 -*-

from pyquery import PyQuery
import sys, random, re, time, urllib

def grabber(base_url, i=1):
    url = base_url + "?page=" + str(i)
    page = PyQuery(url)
    quotes = page(".quote")

    for quote in quotes.items():
        quoteText = quote.clone().find('.quoteText').remove('*').text().encode('ascii', 'ignore')
        quoteVal = quoteText.strip().strip(',').strip('―').rstrip()
        quoteAttribs = quote.clone().find('.authorOrTitle')
        quoteAttribs = quoteAttribs.map(lambda i, e: PyQuery(this).text().encode('utf-8', 'ignore').strip())
        quoteVal += "\n   -- "
        quoteVal += ", ".join(quoteAttribs)
        print quoteVal
        print '%'

    if not page('.next_page').hasClass('disabled'):
      time.sleep(10)
      grabber(base_url, i + 1)

if __name__ == "__main__":
  grabber(''.join(sys.argv[1:]))
