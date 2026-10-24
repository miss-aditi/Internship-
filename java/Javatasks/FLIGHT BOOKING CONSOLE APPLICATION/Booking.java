public class Booking {
    private String bookingId;
    private Flight flight;
    private Passenger passenger;
    private int tickets;
    private double subtotal;
    private double discount;
    private double totalFare;

    public Booking(String bookingId, Flight flight,
                   Passenger passenger, int tickets) {

        this.bookingId = bookingId;
        this.flight = flight;
        this.passenger = passenger;
        this.tickets = tickets;

        calculateFare();
    }

    private void calculateFare() {
        subtotal = flight.getBaseFare() * tickets;

        discount = subtotal *
                   passenger.getDiscountPercentage();

        totalFare = subtotal - discount;
    }

    public void displaySummary() {
        System.out.println("\n========== BOOKING SUMMARY ==========");
        System.out.println("Booking ID: " + bookingId);
        System.out.println("Flight Code: " + flight.getFlightCode());
        System.out.println("Airline: " + flight.getAirline());
        System.out.println("Route: " + flight.getSource()
                           + " to " + flight.getDestination());
        System.out.println("Passenger: " + passenger.getName());
        System.out.println("Age: " + passenger.getAge());
        System.out.println("Passenger Type: "
                           + passenger.getPassengerType());
        System.out.println("Tickets: " + tickets);

        System.out.printf("Base fare per ticket: ₹%.2f%n",
                          flight.getBaseFare());

        System.out.printf("Subtotal: ₹%.2f%n", subtotal);

        System.out.printf("Discount (%.0f%%): ₹%.2f%n",
                          passenger.getDiscountPercentage() * 100,
                          discount);

        System.out.printf("Final amount: ₹%.2f%n", totalFare);
        System.out.println("=====================================");
    }
}