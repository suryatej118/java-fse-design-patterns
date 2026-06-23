public class SearchTest {
    public static void main(String[] args) {
        Product[] products = {
                new Product(101, "Laptop", "Electronics"),
                new Product(102, "Phone", "Electronics"),
                new Product(103, "Shoes", "Fashion"),
                new Product(104, "Watch", "Accessories"),
                new Product(105, "Book", "Education")
        };
        int searchId = 104;
        System.out.println("Linear Search Result:");
        Product result1 = SearchAlgorithms.linearSearch(products, searchId);
        System.out.println(result1);
        System.out.println();
        System.out.println("Binary Search Result:");
        Product result2 = SearchAlgorithms.binarySearch(products, searchId);
        System.out.println(result2);
    }
}