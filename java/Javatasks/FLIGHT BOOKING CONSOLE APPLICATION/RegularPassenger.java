public class RegularPassenger extends Passenger {

    public RegularPassenger(String name, int age) {
        super(name, age);
    }

    @Override
    public double getDiscountPercentage() {
        return 0.0;
    }

    @Override
    public String getPassengerType() {
        return "Regular";
    }
}