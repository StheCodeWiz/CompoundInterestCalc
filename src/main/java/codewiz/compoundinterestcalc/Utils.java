package codewiz.compoundinterestcalc;

public class Utils {

    public static double calculateCompoundInterest(double principle, double interest, int years, int period){
        return Math.round(principle * Math.pow((1 + (interest / period)), (period * years)));
    }
}
