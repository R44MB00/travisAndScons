"""Maximum of array"""


def main(input_file):
    """Maximum of array"""
    large_string = ""
    with open(input_file, "rb") as in_file:
        for lines in in_file.readlines():
            lines = lines.strip()
            large_string += lines

    large_vector = large_string.split(" ")
    result_vector = []

    for nums in large_vector:
        count = 0
        for nums2 in large_vector:
            if int(nums) <= int(nums2):
                count += 1
            else:
                count = 0
                break
        if count > 0:
            result_vector.append(nums)

    for nums in large_vector:
        count = 0
        for nums2 in large_vector:
            if int(nums) >= int(nums2):
                count += 1
            else:
                count = 0
                break
        if count > 0:
            result_vector.append(nums)
    print result_vector[1], result_vector[0]


if __name__ == "__main__":
    main("list.txt")
