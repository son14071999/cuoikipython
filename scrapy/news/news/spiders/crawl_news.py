# -*- coding: utf-8 -*-
from datetime import datetime
import scrapy
from scrapy import Request
from news.items import NewsItem
import re
class QuotesSpider(scrapy.Spider):
    name = "news"
    start_urls = [
        'https://vietnamnet.vn'
    ]
    anh=[]
    a=[]
    def parse(self, response):
        a=response.xpath("//*[@id='anotherelement']/ol[1]/li/a/@href").extract()
        listtl = []
        for i in a:
            s = len(i.split("/"))
            if s==5:
                listtl.append(response.urljoin(i))
        for i in listtl:
            yield scrapy.Request(url=i, callback=self.news)

    def parse_url(self,response):
        theloai = response.xpath("/html/body/div[1]/div[4]/div[2]/div[1]/div[1]/div[1]/a/text()").extract_first()
        loaitin = response.xpath("/html/body/div[1]/div[4]/div[2]/div[1]/div[1]/div[2]/div/h1/a/text()").extract_first();
        for i in range(1,10,1):
            try:
                a = "trang"+str(i)
                u = response.urljoin(a)
                yield scrapy.Request(url=u, callback=self.news)
            except:
                break
    def news(self,response):
        listtin = response.xpath("/html/body/div[1]/div[4]/div[2]/div[1]/div[3]/div[@class='clearfix item']")
        for i in listtin:
            url_tin = i.xpath('./div/h3/a/@href').extract_first()
            print("----------------------",url_tin)

            self.a.append(i.xpath("./div/div[@class='lead']/text()").extract_first())
            self.anh.append(self.tachanh(i.xpath('./a/img').extract_first()))
            yield scrapy.Request(url=response.urljoin(url_tin), callback=self.saveFile)
    def saveFile(self,response):
        item = NewsItem()
        tieuDe = response.xpath("//*[@id='ArticleHolder']/div[2]/h1/text()").extract_first()
        ndTomTat = response.xpath("//*[@id='ArticleContent']/div[1]/h2/p").extract()
        nd = response.xpath("//*[@id='ArticleContent']").extract()
        tacgia = response.xpath("//*[@id='ArticleContent']/p[last()]/span/text()").extract_first()
        if tacgia==None:
            tacgia = "admin"
        print("ndtt ===================================================", ndTomTat)
        item['tieuDe'] = tieuDe
        item['ndTomTat'] = "ndtt"
        self.a.remove(self.a[len(self.a)-1])
        item['nd'] = nd
        item['tieuDeKhongDau'] = self.tieudekhongdau(tieuDe)
        item['anh'] = self.anh[len(self.anh)-1]
        self.anh.remove(self.anh[len(self.anh)-1])
        item['view'] = 1
        item['tacGia'] = tacgia
        item['create_at'] = datetime.now()
        item['update_at'] = datetime.now()
        item['id_lt_id'] = 1
        item['id_tl_id'] = 1
        yield  item
    def tachanh(self,img):
        begin = img.index("src")
        img = img[begin+5:]
        end = img.index('"')
        return img[:end]
    def chuyendoi(self,s):
        s = re.sub(u'[àáạảãâầấậẩẫăằắặẳẵ]', 'a', s)
        s = re.sub(u'[ÀÁẠẢÃĂẰẮẶẲẴÂẦẤẬẨẪ]', 'A', s)
        s = re.sub(u'èéẹẻẽêềếệểễ', 'e', s)
        s = re.sub(u'ÈÉẸẺẼÊỀẾỆỂỄ', 'E', s)
        s = re.sub(u'òóọỏõôồốộổỗơờớợởỡ', 'o', s)
        s = re.sub(u'ÒÓỌỎÕÔỒỐỘỔỖƠỜỚỢỞỠ', 'O', s)
        s = re.sub(u'ìíịỉĩ', 'i', s)
        s = re.sub(u'ÌÍỊỈĨ', 'I', s)
        s = re.sub(u'ùúụủũưừứựửữ', 'u', s)
        s = re.sub(u'ƯỪỨỰỬỮÙÚỤỦŨ', 'U', s)
        s = re.sub(u'ỳýỵỷỹ', 'y', s)
        s = re.sub(u'ỲÝỴỶỸ', 'Y', s)
        s = re.sub(u'Đ', 'D', s)
        s = re.sub(u'đ', 'd', s)
        return s.encode('utf-8')
    def tieudekhongdau(self,tieude):
        tieude = str(tieude).lower()
        tieude = tieude.replace(" ","-")
        return self.chuyendoi(tieude)