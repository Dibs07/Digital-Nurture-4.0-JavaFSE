public class FinancialForecasting {
    
    public static void main(String[] args) {
        double initial = 500.0;
        double growthRate = 0.06;
        int years = 8;
        System.out.printf("Future value after %d years: $%.2f", years, calculateval(initial, growthRate, years));
    }

    private static double calculateval(double presentValue, double rate, int per) {
        if (per == 0) {
            return presentValue;
        }
        return (1 + rate) * calculateval(presentValue, rate, per - 1);
    }

}