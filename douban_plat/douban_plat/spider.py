import pymysql
import requests
from bs4 import BeautifulSoup

# 设置请求头，模拟浏览器访问，避免被网站识别为爬虫
headers = {
    'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.3',
    'cookie': 'll="118267"; bid=MUBlzMNI9hk; __utma=30149280.1007759930.1733465026.1733465026.1733465026.1; __utmc=30149280; __utmz=30149280.1733465026.1.1.utmcsr=(direct)|utmccn=(direct)|utmcmd=(none); ap_v=0,6.0; __utma=223695111.1024261631.1733465036.1733465036.1733465036.1; __utmb=223695111.0.10.1733465036; __utmc=223695111; __utmz=223695111.1733465036.1.1.utmcsr=douban.com|utmccn=(referral)|utmcmd=referral|utmcct=/; _pk_ref.100001.4cf6=%5B%22%22%2C%22%22%2C1733465036%2C%22https%3A%2F%2Fwww.douban.com%2F%22%5D; _pk_id.100001.4cf6=eee2b416ca99965a.1733465036.; _pk_ses.100001.4cf6=1; __yadk_uid=2cUxqLsYLq1XyoJPhcfrg3nGao520Mzf; _vwo_uuid_v2=D4478D30D61E60A58439AFBD82BC6D65F|b0fd133b1b9bf586afe04aba1b6f2baa; dbcl2="259965728:OuLKFLi1orc"; ck=eKxm; push_noty_num=0; push_doumail_num=0; __utmt=1; __utmv=30149280.25996; __utmb=30149280.8.10.1733465026'
}

# 豆瓣电影Top250的URL基础部分
base_url = "https://movie.douban.com/top250"
# 存储电影详情链接
movie_links = []
# 用于存储爬取到的电影信息的列表
movie_list = []


# 发送HTTP GET请求，获取网页内容
def get_page(url):
    response = requests.get(url, headers=headers)
    return response.text


# 解析HTML内容，提取电影信息
def parse_page(html):
    soup = BeautifulSoup(html, 'html.parser')
    # 查找所有电影条目
    movies = soup.find_all('div', class_='item')
    for movie in movies:
        movie_links.append(movie.select_one('.hd>a').get('href'))


def parse_movie(html):
    soup = BeautifulSoup(html, 'html.parser')
    movie_name = soup.select_one('h1>span:first-of-type').text
    release_year = soup.select_one('h1>span:last-of-type').text[1:][:-1]
    rating = soup.select_one('.rating_self>strong').text
    rater_count = soup.select_one('.rating_sum>a>span').text
    director = soup.select_one('#info>span:first-of-type>.attrs>a').text
    genre_spans = soup.find_all('span', property='v:genre')
    movie_type = ','.join([genre.text.strip() for genre in genre_spans])
    timing = soup.find('span', property='v:runtime').get('content')
    movie_list.append([movie_name, release_year, rating, rater_count, director, movie_type, timing])


# 爬取豆瓣电影Top250的所有页面
def main():
    # 每页25部电影，共10页
    for start in range(0, 250, 25):
        # 构造带有start参数的URL
        url = f"{base_url}?start={start}"
        # 获取网页内容
        html = get_page(url)
        # 解析网页内容
        parse_page(html)
    # 通过获取到的链接，完成数据抓取
    for link in movie_links:
        parse_movie(get_page(link))


# 主函数，程序入口
def write_to_mysql():
    connect = None
    try:
        connect = pymysql.connect(
            host='192.168.141.128',  # 主机名称
            port=3306,  # 端口号-3306
            user='root',  # 用户名
            password='123456',  # 密码
            database='douban_plat',  # 数据库名
            charset='utf8'  # 字符集编码
        )
        # 批量插入
        sql = ('INSERT INTO movies (movie_name, release_year, rating, rater_count, director, movie_type, timing)'
               ' VALUES (%s, %s, %s, %s, %s, %s, %s)')
        params = movie_list
        with connect.cursor() as cursor:
            cursor.executemany(sql, params)
        connect.commit()
    except Exception as e:
        print(e)
        connect.rollback()
    finally:
        if connect:
            connect.close()


if __name__ == "__main__":
    main()  # 执行爬取操作
    write_to_mysql()
