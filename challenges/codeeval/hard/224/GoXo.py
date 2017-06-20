"""Point in Polygon made by GoXo."""

import sys


def inside_poly(poly, p_x, p_y):
    """Method to see if a point is inside a polygon"""
    res = "Citizen"
    count = 0
    itr = len(poly)
    p_x1, p_y1 = poly[0]


    for i in range(itr):
        p_x2, p_y2 = poly[(i + 1) % itr]
        ray = ray_intersects(p_x, p_y, p_x1, p_y1, p_x2, p_y2)
        if ray == "True":
            count += 1

        if ray == "Line":
            res = "Prisoner"
            break
        p_x1, p_y1 = p_x2, p_y2
    if count % 2 == 1:
        res = "Prisoner"

    return res


def ray_intersects(p_cx, p_cy, x_1, y_1, x_2, y_2):
    """rpAy algorith to intersect a segment with a point"""
    res = ""
    if y_1 == y_2:
        if p_cy == y_1:
            if p_cx >= min(x_1, x_2) and p_cx <= max(x_1, x_2):
                res = "Line"
            else:
                res = "False"

    if x_1 == x_2:
        if p_cx == x_1:
            if p_cy >= min(y_1, y_2) and p_cy <= max(y_1, y_2):
                res = "Line"

    if res != "":
        return res

    if y_1 > y_2:
        p_by = y_1
        p_bx = x_1
        p_ay = y_2
        p_ax = x_2
    else:
        p_by = y_2
        p_bx = x_2
        p_ay = y_1
        p_ax = x_1

    if p_cy == p_ay or p_cy == p_by:
        p_cy = p_cy + 0.1

    if p_cy < p_ay or p_cy > p_by:
        return "False"
    elif p_cx >= max(p_ax, p_bx):
        return "False"
    else:

        if p_cx < min(p_ax, p_bx):
            return "True"
        else:

            if p_ax != p_bx:
                m_1 = ((p_by - p_ay)*1.0)/(p_bx - p_ax)
            else:
                res = "False"
            if p_ax != p_cx:
                m_2 = ((p_cy - p_ay)*1.0)/(p_cx - p_ax)
            else:
                res = "True"
            if m_2 >= m_1:
                res = "True"
            else:
                res = "False"
    return res

with open(sys.argv[1], 'r') as test_cases:

    for test in test_cases:

        line = test.strip()
        parts = line.split(' | ')
        coord_x = int((parts[1].split(' ')[0]))
        coord_y = int((parts[1].split(' ')[1]))

        polygon = [(int(point.split(' ')[0]),
                    int(point.split(' ')[1]))for point in parts[0].split(', ')]

        if 10 in polygon:
            print "OMG"
            print polygon
        print inside_poly(polygon, coord_x, coord_y)
