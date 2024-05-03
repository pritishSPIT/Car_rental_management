package com.hit.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class CarDao {
    private static final String driverName = "com.mysql.cj.jdbc.Driver";
    private static final String connectionString = "jdbc:mysql://localhost:3306/car_rental";
    private static final String username = "basilpma";
    private static final String password = "bepma#2003";

    public List<Car> getAllCars() throws SQLException {
        List<Car> cars = new ArrayList<>();
        Connection connection = null;
        PreparedStatement statement = null;
        ResultSet resultSet = null;

        try {
            Class.forName(driverName);
            connection = DriverManager.getConnection(connectionString, username, password);
            String query = "SELECT * FROM car";
            statement = connection.prepareStatement(query);
            resultSet = statement.executeQuery();

            while (resultSet.next()) {
                String carId = resultSet.getString("car_id");
                String carMake = resultSet.getString("car_make");
                String carModel = resultSet.getString("car_model");
                int carYear = resultSet.getInt("car_year");
                String carColor = resultSet.getString("car_color");
                double carPricePerDay = resultSet.getDouble("car_price_per_day");
                boolean carAvailable = resultSet.getBoolean("car_available");

                Car car = new Car(carId, carMake, carModel, carYear, carColor, carPricePerDay, carAvailable);
                cars.add(car);
            }
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        } finally {
            if (resultSet != null) resultSet.close();
            if (statement != null) statement.close();
            if (connection != null) connection.close();
        }

        return cars;
    }
    public double getCarPrice(String carId) {
        double carPrice = 0.0;
        String query = "SELECT car_price_per_day FROM car WHERE car_id = ?";

        try (Connection conn = DriverManager.getConnection(connectionString, username, password);
             PreparedStatement statement = conn.prepareStatement(query)) {

            statement.setString(1, carId);
            ResultSet resultSet = statement.executeQuery();

            if (resultSet.next()) {
                carPrice = resultSet.getDouble("car_price_per_day");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return carPrice;
    }

}
