import pymysql


class DBUtils:
    def __init__(self):
        self.connect = None

    def open_connect(self):
        try:
            self.connect = pymysql.connect(
                host='192.168.141.128',
                port=3306,
                user='root',
                password='123456',
                database='douban_plat',
                charset='gbk'
            )
        except Exception as ex:
            print('数据库连接异常', ex)

    def close_connect(self):
        if self.connect is not None:
            self.connect.close()

    def get_movie_sum(self):
        self.open_connect()
        try:
            with self.connect.cursor() as cursor:
                sql = 'SELECT COUNT(*) FROM `movies`'
                cursor.execute(sql)
                return cursor.fetchone()
        except Exception as ex:
            print('数据库操作异常', ex)
        finally:
            self.close_connect()

    def get_max_rating(self):
        self.open_connect()
        try:
            with self.connect.cursor() as cursor:
                sql = 'SELECT MAX(`rating`) AS `max_rating` FROM `movies`'
                cursor.execute(sql)
                return cursor.fetchone()
        except Exception as ex:
            print('数据库操作异常', ex)
        finally:
            self.close_connect()

    def get_type_count(self):
        self.open_connect()
        try:
            with self.connect.cursor() as cursor:
                sql = 'SELECT `movie_type` FROM `movies`'
                cursor.execute(sql)
                return cursor.fetchall()
        except Exception as ex:
            print('数据库操作异常', ex)
        finally:
            self.close_connect()

    def get_max_year(self):
        self.open_connect()
        try:
            with self.connect.cursor() as cursor:
                sql = 'SELECT `release_year`, COUNT(*) AS `year_count` FROM `movies` GROUP BY `release_year` ORDER BY `year_count` DESC LIMIT 0, 1'
                cursor.execute(sql)
                return cursor.fetchone()
        except Exception as ex:
            print('数据库操作异常', ex)
        finally:
            self.close_connect()

    def get_max_timing(self):
        self.open_connect()
        try:
            with self.connect.cursor() as cursor:
                sql = 'SELECT MAX(`timing`) FROM `movies`'
                cursor.execute(sql)
                return cursor.fetchone()
        except Exception as ex:
            print('数据库操作异常', ex)
        finally:
            self.close_connect()

    def get_max_director(self):
        self.open_connect()
        try:
            with self.connect.cursor() as cursor:
                sql = 'SELECT  `director`, COUNT(*) AS `director_count` FROM `movies` GROUP BY `director` ORDER BY `director_count` DESC LIMIT 0, 1'
                cursor.execute(sql)
                return cursor.fetchone()
        except Exception as ex:
            print('数据库操作异常', ex)
        finally:
            self.close_connect()

    def get_movies(self):
        self.open_connect()
        try:
            with self.connect.cursor() as cursor:
                sql = 'SELECT * FROM movies'
                cursor.execute(sql)
                return cursor.fetchall()
        except Exception as ex:
            print('数据库操作异常', ex)
        finally:
            self.close_connect()

    def get_count_by_year(self):
        self.open_connect()
        try:
            with self.connect.cursor() as cursor:
                sql = 'SELECT `release_year`, COUNT(*) AS `year_count` FROM `movies` GROUP BY `release_year` ORDER BY `release_year` ASC'
                cursor.execute(sql)
                return cursor.fetchall()
        except Exception as ex:
            print('数据库操作异常', ex)
        finally:
            self.close_connect()

    def get_name_and_rating(self):
        self.open_connect()
        try:
            with self.connect.cursor() as cursor:
                sql = 'SELECT `movie_name`, `rating`  FROM `movies` ORDER BY RAND() LIMIT 20'
                cursor.execute(sql)
                return cursor.fetchall()
        except Exception as ex:
            print('数据库操作异常', ex)
        finally:
            self.close_connect()

    def get_movie_top10(self):
        self.open_connect()
        try:
            with self.connect.cursor() as cursor:
                sql = 'SELECT `movie_name`, `id` FROM `movies` LIMIT 10'
                cursor.execute(sql)
                return cursor.fetchall()
        except Exception as ex:
            print('数据库操作异常', ex)
        finally:
            self.close_connect()

    def get_rater_top20(self):
        self.open_connect()
        try:
            with self.connect.cursor() as cursor:
                sql = 'SELECT `movie_name`, `rater_count`  FROM `movies` ORDER BY `rater_count` DESC LIMIT 20'
                cursor.execute(sql)
                return cursor.fetchall()
        except Exception as ex:
            print('数据库操作异常', ex)
        finally:
            self.close_connect()

    def get_movie_name(self):
        self.open_connect()
        try:
            with self.connect.cursor() as cursor:
                sql = 'SELECT `movie_name`, 1 FROM `movies`'
                cursor.execute(sql)
                return cursor.fetchall()
        except Exception as ex:
            print('数据库操作异常', ex)
        finally:
            self.close_connect()
