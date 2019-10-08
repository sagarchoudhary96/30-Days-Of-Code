import Foundation

// Complete the solve function below.
func solve(meal_cost: Double, tip_percent: Int, tax_percent: Int) -> Void {
    let tip = (meal_cost * (Double(tip_percent)/100))
    let tax = (meal_cost * (Double(tax_percent)/100))
    let mealCost = meal_cost + tip + tax

    // cast the result of the rounding operation to an int and save it as totalCost
    let totalCost = Int(round(mealCost))

    // Print your result
    print(totalCost)
}
