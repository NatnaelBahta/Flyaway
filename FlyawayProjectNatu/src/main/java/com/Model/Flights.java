package com.Model;

public class Flights {

    private String flightName;
    private String from;
    private String to;
    private String date;
    private String departureTime;
    private String arrivalTime;
    private String price;

    public Flights(String flightName, String from, String to, String date, String departureTime, String arrivalTime, String price) {
        this.flightName = flightName;
        this.from = from;
        this.to = to;
        this.date = date;
        this.departureTime = departureTime;
        this.arrivalTime = arrivalTime;
        this.price = price;
    }

    public Flights(String flightName, String from, String to) {
        this.flightName = flightName;
        this.from = from;
        this.to = to;
    }

    public String getFlightName() {
        return flightName;
    }

    public String getFrom() {
        return from;
    }

    public String getTo() {
        return to;
    }

    public String getDate() {
        return date;
    }

    public String getDepartureTime() {
        return departureTime;
    }

    public String getArrivalTime() {
        return arrivalTime;
    }

    public String getPrice() {
        return price;
    }


    public void setFlightName(String flightName) {
        this.flightName = flightName;
    }
    public void setFrom(String from) {
        this.from = from;
    }
    public void setTo(String to) {
        this.to = to;
    }
    public void setDate(String date) {
        this.date = date;
    }
    public void setDepartureTime(String departureTime) {
        this.departureTime = departureTime;
    }
    public void setArrivalTime(String arrivalTime) {
        this.arrivalTime = arrivalTime;
    }
    public void setPrice(String price) {
        this.price = price;
    }
}
