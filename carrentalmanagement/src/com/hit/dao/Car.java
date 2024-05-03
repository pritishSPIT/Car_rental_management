package com.hit.dao;

public class Car {
    private String carId;
    private String carMake;
    private String carModel;
    private int carYear;
    private String carColor;
    private double carPricePerDay;
    private boolean carAvailable;

    public Car(String carId, String carMake, String carModel, int carYear, String carColor, double carPricePerDay, boolean carAvailable) {
        this.carId = carId;
        this.carMake = carMake;
        this.carModel = carModel;
        this.carYear = carYear;
        this.carColor = carColor;
        this.carPricePerDay = carPricePerDay;
        this.carAvailable = carAvailable;
    }
    public String getCarId() {
        return carId;
    }

    public void setCarId(String carId) {
        this.carId = carId;
    }

    public String getCarMake() {
        return carMake;
    }

    public void setCarMake(String carMake) {
        this.carMake = carMake;
    }

    public String getCarModel() {
        return carModel;
    }

    public void setCarModel(String carModel) {
        this.carModel = carModel;
    }

    public int getCarYear() {
        return carYear;
    }

    public void setCarYear(int carYear) {
        this.carYear = carYear;
    }

    public String getCarColor() {
        return carColor;
    }

    public void setCarColor(String carColor) {
        this.carColor = carColor;
    }

    public double getCarPricePerDay() {
        return carPricePerDay;
    }

    public void setCarPricePerDay(double carPricePerDay) {
        this.carPricePerDay = carPricePerDay;
    }

    public boolean isCarAvailable() {
        return carAvailable;
    }

    public void setCarAvailable(boolean carAvailable) {
        this.carAvailable = carAvailable;
    }
}
