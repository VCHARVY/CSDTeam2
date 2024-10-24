import java.util.*;

public class CodeOptimizationExample {

    public static void main(String[] args) {
        // Sample array for testing
        String[] array = {"Hello", "World", "Java", "Optimization", "Example"};

        // 1. Algorithm Optimization: Using built-in sort instead of bubble sort
        System.out.println("Sorted Array:");
        String[] sortedArray = optimizedSort(array);
        System.out.println(Arrays.toString(sortedArray));

        // 2. Reduce Object Creation: Using StringBuilder for concatenation
        String concatenatedResult = useStringBuilder(array);
        System.out.println("Concatenated Result: " + concatenatedResult);

        // 3. Use Efficient Data Structures: Using HashMap for fast lookups
        Map<String, Integer> map = new HashMap<>();
        map.put("Java", 1);
        map.put("Optimization", 2);
        checkValueInMap(map, "Java");
        checkValueInMap(map, "Example");

        // 4. Lazy Initialization: Creating heavy resource only when needed
        LazyResource lazyResource = new LazyResource();
        lazyResource.getResource(); // HeavyResource initialized here

        // 5. Use Final Keyword
        final String constantValue = "Final Value";
        System.out.println("Constant Value: " + constantValue);
    }

    // Method for sorting using built-in Arrays.sort
    private static String[] optimizedSort(String[] array) {
        Arrays.sort(array); // Efficient sorting using quicksort
        return array;
    }

    // Method for string concatenation using StringBuilder
    private static String useStringBuilder(String[] array) {
        StringBuilder sb = new StringBuilder();
        for (String s : array) {
            sb.append(s).append(" "); // Efficiently append strings
        }
        return sb.toString().trim(); // Return trimmed result
    }

    // Method to check values in a HashMap
    private static void checkValueInMap(Map<String, Integer> map, String key) {
        if (map.containsKey(key)) {
            System.out.println(key + " found with value: " + map.get(key));
        } else {
            System.out.println(key + " not found.");
        }
    }

    // Class demonstrating lazy initialization
    static class HeavyResource {
        HeavyResource() {
            // Simulate expensive initialization
            System.out.println("HeavyResource initialized!");
        }
    }

    static class LazyResource {
        private HeavyResource resource;

        HeavyResource getResource() {
            if (resource == null) {
                resource = new HeavyResource(); // Initialized only when accessed
            }
            return resource;
        }
    }
}
