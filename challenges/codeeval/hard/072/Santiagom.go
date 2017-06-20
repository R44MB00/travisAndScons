package main

import "fmt"
import "log"
import "bufio"
import "strconv"
import "os"
import "strings"
import "math"

func getTextParsed(testLine map[int][]string) [][][]int {
	tests := make([][][]int, len(testLine))
	for posText, testRaw := range testLine {
		test := make([][]int, len(testRaw))
		tests[posText] = test
		for testRow, lineRaw := range testRaw {
			line := make([]int, len(testRaw))
			tests[posText][testRow] = line
			lineSplit := strings.Split(lineRaw, ",")
			for testCol, val := range lineSplit {
				tests[posText][testRow][testCol], _ = strconv.Atoi(val)
			}
		}
	}
	return tests
}

func getMultipleLines(scanner *bufio.Scanner) map[int][]string {
	tests := make(map[int][]string)
	test_cases := 0
	test_count := 0
	for scanner.Scan() {
		if test_cases > 0 {
			test_cases -= 1
			line := scanner.Text()
			tests[test_count-1] = append(tests[test_count-1], line)
		} else {
			test_cases, _ = strconv.Atoi(scanner.Text())
			tests[test_count] = make([]string, 0, test_cases)
			test_count += 1
		}
	}
	return tests
}



func minSumToNum(mTest [][]int) int {
	size := len(mTest)
	for i := size - 2; i >= 0; i-- {
		mTest[size-1][i] += mTest[size-1][i+1]
		mTest[i][size-1] += mTest[i+1][size-1]
	}

	for i := size - 2; i >= 0; i-- {
		for j := size - 2; j >= 0; j-- {
			mTest[i][j] += int(math.Min(float64(mTest[i+1][j]), float64(mTest[i][j+1])))
		}
	}
	return mTest[0][0]
}

func main() {
	file, err := os.Open(os.Args[1])
    //file, err := os.Open("test.txt")
	if err != nil {
		log.Fatal(err)
	}
	defer file.Close()

	scanner := bufio.NewScanner(file)
	testLine := getMultipleLines(scanner)
	tests := getTextParsed(testLine)
	for _, test := range tests {
		fmt.Println(minSumToNum(test))
	}
}
