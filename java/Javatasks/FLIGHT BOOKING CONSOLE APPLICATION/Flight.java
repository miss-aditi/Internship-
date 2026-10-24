public class Flight {
    private String flightCode;
    private String airline;
    private String source;
    private String destination;
    private int availableSeats;
    private double baseFare;

    public Flight(String flightCode, String airline,
                  String source, String destination,
                  int availableSeats, double baseFare) {

        this.flightCode = flightCode;
        this.airline = airline;
        this.source = source;
        this.destination = destination;
        this.availableSeats = availableSeats;
        this.baseFare = baseFare;
    }

    public String getFlightCode() {
        return flightCode;
    }

    public String getAirline() {
        return airline;
    }

    public String getSource() {
        return source;
    }

    public String getDestination() {
        return destination;
    }

    public int getAvailableSeats() {
        return availableSeats;
    }

    public double getBaseFare() {
        return baseFare;
    }

    public boolean hasEnoughSeats(int tickets) {
        return tickets > 0 && tickets <= availableSeats;
    }

    public boolean reserveSeats(int tickets) {
        if (hasEnoughSeats(tickets)) {
            availableSeats -= tickets;
            return true;
        }
        return false;
    }

    public void displayFlight() {
        System.out.printf(
            "%-8s %-15s %-12s %-12s %-8d ₹%.2f%n",
            flightCode, airline, source, destination,
            availableSeats, baseFare
        );
    }
}