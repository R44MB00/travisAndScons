"""Array counters"""


def main():
    """Array counters"""
    large_string = (
        "1 10 18 14 20 12 13 13 4 3 6 15 8 11 10 2 18 2 5 20"
        " 6 2 10 13 17 12 19 4 10 20 3 11 10 20 5 10 12 18 3 16 20 8 11 8"
        " 18 20 9 15 2 13 15 7 14 4 20 10 15 19 13 5 18 16 16 8 16 20 17 7"
        " 18 19 3 18 7 13 5 4 12 14 19 13 7 13 20 20 16 20 10 11 18 3 15 16"
        " 18 11 3 13 10 19 20 8 18 3 5 4 15 10 8 6 3 7 19 9 20 19 9 16 18 19"
        " 6 16 2 1 11 20 11 13 13 1 12 12 8 9 15 12 13 9 1 1 15 4 7 14 13 7"
        " 12 1 2 9 20 7 5 1 7 15 20 17 7 12 17 19 4 5 8 18 16 20 6 17 1 1 20"
        " 8 14 13 14 5 13 15 14 13 2 18 13 9 12 12 5 19 4 2 17 7 6 4 5 2 4 11"
        " 18 5 11 18 12 4 10 6 9 3 20 2 15 2 20 8 10 12 20 15 11 3 16 7 10 2"
        " 11 14 4 15 4 1 19 15 19 11 19 9 16 7 12 16 9 7 17 9 14 6 20 13 1 10"
        " 16 16 17 5 18 8 18")
    large_vector = large_string.split(" ")
    vector_counter = [0, 0, 0, 0, 0, 0, 0]
    vector_repeater = []
    for num in large_vector:
        acum = 0
        for xum in large_vector:
            if num in vector_repeater:
                break
            elif num == xum:
                acum += 1
        vector_repeater.append(num)
        if acum > 0:
            vector_counter[int(num)-1] = acum
    for resp in vector_counter:
        resp = int(resp)
        print resp


if __name__ == "__main__":
    main()
