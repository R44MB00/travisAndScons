#include <iostream>
#include <string>
#include <vector>
#include <algorithm>
#include <limits.h>
#include <math.h>
#include <ctime>
#include <time.h>

using namespace std;

/*
 * 12 - Modulo and time difference
 * https://www.daniweb.com/programming/software-development/threads/23621/convert-seconds-to-minutes-hours-days-months-years-etc
 */

int main() {

    int i, len;
    int d1, h1, m1, s1, d2, h2, m2, s2;
    int sec;
    struct tm t1, t2;
    time_t x, y;
    cin >> len;

    for (i = 0; i < len; i++) {
        cin >> d1 >> h1 >> m1 >> s1 >> d2 >> h2 >> m2 >> s2;

        t1.tm_sec = s1;
        t1.tm_min = m1;
        t1.tm_hour = h1;
        t1.tm_mday = d1;
        t1.tm_mon = 11;
        t1.tm_year = 115;

        t2.tm_sec = s2;
        t2.tm_min = m2;
        t2.tm_hour = h2;
        t2.tm_mday = d2;
        t2.tm_mon = 11;
        t2.tm_year = 115;

        x = mktime(&t1);
        y = mktime(&t2);

        sec = difftime(x, y);
        s1 = sec % 60;
        m1 = (sec / 60) % 60;
        h1 = ((sec / 60) / 60) % 24;
        d1 = (((sec / 60) / 60) / 24) % 365;
        cout << '(' << abs(d1) << ' ' << abs(h1) << ' ' << abs(m1) << ' ' << abs(s1) << ')' << (((i + 1) == len) ? "" : " ");
    }

    return 0;

}
