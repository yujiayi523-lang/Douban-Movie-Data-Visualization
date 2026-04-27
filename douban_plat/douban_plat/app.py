from collections import Counter

from flask import Flask, render_template
from db_utils import DBUtils
import charts

app = Flask(__name__)
utils = DBUtils()


@app.route('/')
def hello_world():
    return render_template('index.html')


@app.route('/movie_list')
def movie_list():
    movie_sum = utils.get_movie_sum()[0]
    max_rating = utils.get_max_rating()[0]
    # 将内容放入至set集合中，目的是为了去重。
    type_count = len({word for tuple_item in utils.get_type_count() for word in tuple_item[0].split(',')})
    max_year = utils.get_max_year()[0]
    max_timing = utils.get_max_timing()[0]
    max_director = utils.get_max_director()[0]
    movies = utils.get_movies()
    data = {
        'movie_sum': movie_sum,
        'max_rating': max_rating,
        'type_count': type_count,
        'max_year': max_year,
        'max_timing': max_timing,
        'max_director': max_director,
        'movies': movies
    }
    return render_template('movie_list.html', data=data)


@app.route('/movie_by_year')
def movie_by_year():
    return render_template('movie_by_year.html')


@app.route('/movie_by_year_chart')
def movie_by_year_chart():
    args = tuple(zip(*utils.get_count_by_year()))
    max_count = utils.get_max_year()[1]
    chart = charts.movie_year_chart(args, max_count)
    return chart


@app.route('/movie_type_percent')
def movie_type_percent():
    return render_template('movie_type_percent.html')


@app.route('/movie_type_percent_chart')
def movie_type_percent_chart():
    args = []
    types = utils.get_type_count()
    genre_count = Counter()
    for item in types:
        genre_count.update(item[0].split(','))
    for genre, count in genre_count.items():
        args.append((genre, count))
    return charts.movie_type_chart(args)


@app.route('/name_and_rating')
def name_and_rating():
    return render_template('name_and_rating.html')


@app.route('/name_and_rating_chart')
def name_and_rating_chart():
    args = utils.get_name_and_rating()
    return charts.movie_rating_chart(args)


@app.route('/movie_top')
def movie_top():
    return render_template('movie_top.html')


@app.route('/movie_top_chart')
def movie_top_chart():
    args = utils.get_movie_top10()
    return charts.movie_top_chart(args)


@app.route('/rater_top')
def rater_top():
    return render_template('rater_top.html')


@app.route('/rater_top_chart')
def rater_top_chart():
    args = tuple(zip(*utils.get_rater_top20()))
    return charts.movie_rater_count_chart(args)


@app.route('/word_cloud')
def word_cloud():
    return render_template('word_cloud.html')


@app.route('/word_cloud_chart')
def word_cloud_chart():
    args = utils.get_movie_name()
    return charts.movie_words_cloud(args)


if __name__ == '__main__':
    app.run()
