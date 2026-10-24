public class StudentPassenger extends Passenger {

    public StudentPassenger(String name, int age) {
        super(name, age);
    }

    @Override
    public double getDiscountPercentage() {
        return 0.10;
    }

    @Override
    public String getPassengerType() {
        return "Student";
    }
}