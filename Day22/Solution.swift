func getHeight(root: Node?) -> Int {
    return root == nil ? -1 : 1 + max(getHeight(root: root?.left), getHeight(root: root?.right))
} // End of getHeight function
