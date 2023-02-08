// Author: Christopher Aron
// Course: ITCS-3112-051
// Instructor: Danny Jugan
// Due Date: Sunday, December 11, 2022

//import packages
import java.util.Scanner;

// java class
class scheduleProgram {

    // main method
    public static void main(String[] args) {

        // declare events int, user inputs the number of events
        int events;

        // declare scanner object
        Scanner scanner = new Scanner(System.in);

        // Hello
        System.out.println("Hello!");
        System.out.println("");

        // delay for cinematic purposes :)
        try {
            Thread.sleep(1000);   
        }
        catch(InterruptedException ex) {
              ex.printStackTrace();
        }

        // welcome message
        System.out.println("Welcome to the Schedule Events Program!");
        System.out.println("");

        // delay for cinematic purposes :)
        try {
            Thread.sleep(1000);   
        }
        catch(InterruptedException ex) {
              ex.printStackTrace();
        }

        // ask user for input
        System.out.println("Please enter the number of events you would like to plan:");

        // scanner detects the next int and assigns to events
        events = scanner.nextInt();
        scanner.nextLine();

        //blank line
        System.out.println("");


        // declare arrays for date, event name, time of day, and length
        String[] date = new String[events];
        String[] eventName = new String[events];
        String[] timeOfDay = new String[events];
        String[] length = new String[events];

        // for loop for inputing all the data
        for (int i = 0; i < events; i++) {

            // tells the user which number of event is being put in
            System.out.println("Event " + (i + 1) + ":");

            // asks user for input on the date
            System.out.println("Enter the date for the event (MM/DD/YYYY):");
            date[i]= scanner.nextLine();

            // asks user for the event name
            System.out.println("Enter the name for this event:");
            eventName[i] = scanner.nextLine();

            // asks user for the time of day the event takes place
            System.out.println("Enter the time of day of the event (HH:MM):");
            timeOfDay[i] = scanner.nextLine();

            // duration of the event
            System.out.println("Enter the duration of the event (min):");
            length[i] = scanner.nextLine();

            // extra line of space for easier viewing
            System.out.println("");
        }

        // delay for cinematic purposes :)
        try {
            Thread.sleep(1000);   
        }
        catch(InterruptedException ex) {
              ex.printStackTrace();
        }

        // announced the events are about to be listed
        System.out.println("Here are the events in order they were put in: ");
        System.out.println("");

        // delay for cinematic purposes :)
        try {
            Thread.sleep(1000);   
        }
        catch(InterruptedException ex) {
              ex.printStackTrace();
        }

        // for loop to print out all the events and details
        for (int i = 0; i < events; i++) {

            // prints number of event
            System.out.println("Event    " + (i + 1) + ": ");

            // prints name of event
            System.out.println("Name:    " + eventName[i]);

            // prints date of event
            System.out.println("Date:    " + date[i]);

            // prints time of event
            System.out.println("Time:    " + timeOfDay[i]);

            // prints length of event
            System.out.println("Length:  " + length[i] + " min");
            
            // prints blank line
            System.out.println("");

            // delay for cinematic purposes :)
            try {
                Thread.sleep(1000);   
            }
            catch(InterruptedException ex) {
                ex.printStackTrace();
            }
            
        }

        // delay for cinematic purposes :)
        try {
            Thread.sleep(1000);   
        }
        catch(InterruptedException ex) {
              ex.printStackTrace();
        }

        // thank you message
        System.out.println("Thank you for using this program!");
        System.out.println("");

        // credits
        System.out.println("Credits:");
        System.out.println("");
        System.out.println("Author:");
        System.out.println("Christopher Aron");
        System.out.println("");
        System.out.println("Helpful websites:");
        System.out.println("w3schools.com");
        System.out.println("geeksforgeeks.org");
        System.out.println("stackoverflow.com");
        System.out.println("google.com");
        System.out.println("");


        // delay for cinematic purposes :)
        try {
            Thread.sleep(1000);   
        }
        catch(InterruptedException ex) {
              ex.printStackTrace();
        }

        // farewell message
        System.out.println("Goodbye!");

        // close scanner object
        scanner.close();

    }

}