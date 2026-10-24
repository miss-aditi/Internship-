import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class FlightBookingSystem {

    private Scanner sc = new Scanner(System.in);
    private List<Flight> flights = new ArrayList<>();
    private List<Booking> bookings = new ArrayList<>();
    private int bookingCounter = 1001;

    public FlightBookingSystem() {
        flights.add(new Flight(
            "PN101", "Air India", "Pune",
            "Delhi", 20, 4000
        ));

        flights.add(new Flight(
            "MB202", "IndiGo", "Mumbai",
            "Bengaluru", 25, 3500
        ));

        flights.add(new Flight(
            "PN303", "Akasa Air", "Pune",
            "Hyderabad", 15, 3000
        ));
    }

    // Display all available flights
    public void displayFlights() {
        System.out.println("\n---------------- AVAILABLE FLIGHTS ----------------");
        System.out.printf("%-8s %-15s %-12s %-12s %-8s %s%n",
                "Code", "Airline", "Source",
                "Destination", "Seats", "Base Fare");

        for (Flight flight : flights) {
            flight.displayFlight();
        }

        System.out.println("---------------------------------------------------");
    }

    // Find a flight using its code
    public Flight findFlightByCode(String code) {
        for (Flight flight : flights) {
            if (flight.getFlightCode().equalsIgnoreCase(code)) {
                return flight;
            }
        }
        return null;
    }

    // Read a valid integer from the console
    private int readInt(String message) {
        while (true) {
            System.out.print(message);
            String input = sc.nextLine().trim();

            try {
                return Integer.parseInt(input);
            } catch (NumberFormatException e) {
                System.out.println("Error: Please enter a valid integer.");
            }
        }
    }

    // Validate booking details before confirmation
    public boolean validateBookingDetails(
            Flight flight, String name, int age,
            int tickets, String type) {

        if (flight == null) {
            System.out.println("Booking failed: Invalid flight code.");
            return false;
        }

        if (name == null || name.trim().isEmpty()) {
            System.out.println("Booking failed: Name cannot be blank.");
            return false;
        }

        if (age <= 0) {
            System.out.println("Booking failed: Age must be greater than 0.");
            return false;
        }

        if (tickets <= 0) {
            System.out.println("Booking failed: Tickets must be greater than 0.");
            return false;
        }

        if (!type.equalsIgnoreCase("Regular")
                && !type.equalsIgnoreCase("Student")) {
            System.out.println(
                "Booking failed: Type must be Regular or Student."
            );
            return false;
        }

        if (!flight.hasEnoughSeats(tickets)) {
            System.out.println(
                "Booking failed: Not enough seats available."
            );
            return false;
        }

        return true;
    }

    // Book a flight
    public void bookFlight() {
        System.out.print("Enter flight code: ");
        String code = sc.nextLine().trim();

        Flight flight = findFlightByCode(code);

        System.out.print("Enter passenger name: ");
        String name = sc.nextLine().trim();

        int age = readInt("Enter age: ");

        System.out.print("Passenger type (Regular/Student): ");
        String type = sc.nextLine().trim();

        int tickets = readInt("Enter number of tickets: ");

        // Validate everything before updating seats or saving booking
        if (!validateBookingDetails(
                flight, name, age, tickets, type)) {
            return;
        }

        Passenger passenger;

        if (type.equalsIgnoreCase("Student")) {
            passenger = new StudentPassenger(name, age);
        } else {
            passenger = new RegularPassenger(name, age);
        }

        // Create and save only after validation succeeds
        String bookingId = "BK" + bookingCounter;

        Booking booking = new Booking(
            bookingId, flight, passenger, tickets
        );

        if (flight.reserveSeats(tickets)) {
            bookings.add(booking);
            bookingCounter++;

            System.out.println("\nBooking confirmed!");
            booking.displaySummary();
        } else {
            System.out.println(
                "Booking failed: Not enough seats available."
            );
        }
    }

    // Display the most recent confirmed booking
    public void viewBooking() {
        if (bookings.isEmpty()) {
            System.out.println("No confirmed booking exists yet.");
            return;
        }

        bookings.get(bookings.size() - 1).displaySummary();
    }

    // Main menu loop
    public void start() {
        System.out.println("Welcome to Kiran Air Booking!");

        while (true) {
            System.out.println("\n1. View Flights");
            System.out.println("2. Book Flight");
            System.out.println("3. View Booking");
            System.out.println("4. Exit");

            int choice = readInt("Enter choice: ");

            switch (choice) {
                case 1:
                    displayFlights();
                    break;

                case 2:
                    bookFlight();
                    break;

                case 3:
                    viewBooking();
                    break;

                case 4:
                    System.out.println(
                        "Thank you for using Kiran Air Booking!"
                    );
                    sc.close();
                    return;

                default:
                    System.out.println(
                        "Invalid choice. Please select 1 to 4."
                    );
            }
        }
    }

    public static void main(String[] args) {
        FlightBookingSystem system = new FlightBookingSystem();
        system.start();
    }
}