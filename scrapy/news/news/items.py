# -*- coding: utf-8 -*-

# Define here the models for your scraped items
#
# See documentation in:
# https://docs.scrapy.org/en/latest/topics/items.html

import scrapy


class NewsItem(scrapy.Item):
    tieuDe = scrapy.Field()
    tieuDeKhongDau = scrapy.Field()
    ndTomTat = scrapy.Field()
    nd = scrapy.Field()
    anh = scrapy.Field()
    view = scrapy.Field()
    tacGia = scrapy.Field()
    create_at = scrapy.Field()
    update_at = scrapy.Field()
    id_lt_id = scrapy.Field()
    id_tl_id = scrapy.Field()

