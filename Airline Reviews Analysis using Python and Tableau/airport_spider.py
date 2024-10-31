import scrapy

class AirportSpider(scrapy.Spider):
    name = 'airport'
    start_urls = ['https://www.ccra.com/airport-codes/']

    def parse(self, response):
        table = response.xpath('//table')
        headers = table.xpath('.//th/text()').getall()
        rows = table.xpath('.//tr')[1:]  # Skip header row

        for row in rows:
            cells = row.xpath('.//td/text()').getall()
            yield dict(zip(headers, cells))

        # Handle pagination if necessary
        next_page = response.xpath('//a[text()="Next"]/@href').get()
        if next_page is not None:
            yield response.follow(next_page, self.parse)