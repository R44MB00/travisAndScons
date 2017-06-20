"""Counting Sundays"""
import calendar


def sundays():
    """Calculate the sundays"""
    k = 0
    for i in range(1901, 2001):
        for j in range(1, 13):
            days = calendar.monthcalendar(i, j)
            if days[0][-1] == 1:
                k += 1

    print k


sundays()
