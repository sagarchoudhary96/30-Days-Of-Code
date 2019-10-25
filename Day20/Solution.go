package main
import (
    "fmt"
)

func main() {
    var n int

    // take the inputs
    fmt.Scanf("%d", &n)
    arr := make([]int, n)
    for i:=0; i<n; i++ {
        fmt.Scanf("%d",&arr[i])
    }

    totalSwaps := 0

    for i:=0; i<n; i++ {
        // Track number of elements swapped during a single array traversal
        numberOfSwaps := 0
        for j:=0; j<n-1; j++ {
            if arr[j] > arr[j+1] {
                arr[j], arr[j+1] = arr[j+1], arr[j]
                numberOfSwaps += 1
                totalSwaps += 1
            }
        }

         // If no elements were swapped during a traversal, array is sorted
        if (numberOfSwaps == 0) {
            break;
        }
    }

    fmt.Printf("Array is sorted in %d swaps.\n", totalSwaps)
    fmt.Printf("First Element: %d\n",arr[0])
    fmt.Printf("Last Element: %d",arr[n-1])
}
