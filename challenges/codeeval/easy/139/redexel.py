#Alexander Botero
import sys

with open(sys.argv[1], 'r') as input:
    testing = input.read().strip().splitlines()


months = {
    'Jan': 0,
    'Feb': 1,
    'Mar': 2,
    'Apr': 3,
    'May': 4,
    'Jun': 5,
    'Jul': 6,
    'Aug': 7,
    'Sep': 8,
    'Oct': 9,
    'Nov': 10,
    'Dec': 11
}

for test in testing:
    anos = {i: [False for _ in xrange(12)] for i in xrange(1990, 2021)}
    periodos = test.split('; ')
    for periodo in periodos:
        start, end = periodo.split('-')
        start_month, start_year = [int(months.get(i, i)) for i in start.split()]
        end_month, end_year = [int(months.get(i, i))for i in end.split()]
        period_years = xrange(start_year, end_year + 1)

        for y in period_years:
            start_point = start_month if y == start_year else 0
            end_point = end_month + 1 if y == end_year else 12
            for mes in xrange(start_point, end_point):
                anos[y][mes] = True

    total_months = sum(sum(1 for j in anos[i] if j) for i in anos.keys())
    print total_months / 12
