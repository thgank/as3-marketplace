package devices;
import java.util.Scanner;
import java.sql.*;
import java.util.ArrayList;

import devices.gadgets.Headphones;
import devices.gadgets.Smartwatch;
import devices.phones.MobilePhone;
import devices.phones.Smartphone;
import devices.tablets.*;

public class Market {
    public void initMobilePhone() {
        Scanner scanner = new Scanner(System.in);
        Market market = new Market();
        System.out.println("Enter brand: ");
        String brand = scanner.nextLine();
        System.out.println("Enter model: ");
        String model = scanner.nextLine();
        System.out.println("Enter price: ");
        double price = Double.parseDouble(scanner.nextLine());
        System.out.println("Enter memory: ");
        int memory = Integer.parseInt(scanner.nextLine());
        System.out.println("Enter ram: ");
        int ram = Integer.parseInt(scanner.nextLine());
        System.out.println("Enter screen size: ");
        String screenSize = scanner.nextLine();
        System.out.println("Enter camera: ");
        String camera = scanner.nextLine();
        System.out.println("Enter Dual Sim (true/false): ");
        boolean dualSim = Boolean.parseBoolean(scanner.nextLine());
        MobilePhone mobilePhone = new MobilePhone(brand, model, price, ram, memory, screenSize, camera, dualSim);
        market.createMobilePhone(mobilePhone);
    }
    public void initHeadphones() {
        Market market = new Market();
        Scanner scanner = new Scanner(System.in);
        System.out.println("Enter brand: ");
        String brand = scanner.nextLine();
        System.out.println("Enter model: ");
        String model = scanner.nextLine();
        System.out.println("Enter price: ");
        double price = Double.parseDouble(scanner.nextLine());
        System.out.println("Enter type: ");
        String type = scanner.nextLine();
        System.out.println("Enter Audio Quality");
        String audioQuality = scanner.nextLine();
        System.out.println("Enter Noise Cancel (true/false): ");
        boolean noiseCancel = Boolean.parseBoolean(scanner.nextLine());
        Headphones headphones = new Headphones(brand,model,price,type,audioQuality,noiseCancel);
        market.createHeadphones(headphones);
    }
    public void initSmartwatch() {
        Market market = new Market();
        Scanner scanner = new Scanner(System.in);
        System.out.println("Enter brand: ");
        String brand = scanner.nextLine();
        System.out.println("Enter model: ");
        String model = scanner.nextLine();
        System.out.println("Enter price: ");
        double price = Double.parseDouble(scanner.nextLine());
        System.out.println("Enter type: ");
        String type = scanner.nextLine();
        System.out.println("Enter operating system: ");
        String operatingSystem = scanner.nextLine();
        System.out.println("Enter Heart Rate (true/false): ");
        boolean heartRate = Boolean.parseBoolean(scanner.nextLine());
        System.out.println("Enter Fitness Tracker (true/false): ");
        boolean fitnessTracker = Boolean.parseBoolean(scanner.nextLine());
        Smartwatch smartwatch = new Smartwatch(brand, model, price, type, operatingSystem, fitnessTracker, heartRate);
        market.createSmartWatch(smartwatch);
    }
        public void initGameTablet(){
        Market market = new Market();
        Scanner scanner = new Scanner(System.in);
        System.out.println("Enter brand: ");
        String brand = scanner.nextLine();
        System.out.println("Enter model: ");
        String model = scanner.nextLine();
        System.out.println("Enter price: ");
        double price = Double.parseDouble(scanner.nextLine());
        System.out.println("Enter stylus support (true/false): ");
        boolean stylusSup = Boolean.parseBoolean(scanner.nextLine());
        System.out.println("Enter keyboard support (true/false): ");
        boolean keyboardSup = Boolean.parseBoolean(scanner.nextLine());
        System.out.println("Enter screen ratio: ");
        String screenRatio = scanner.nextLine();
        System.out.println("Enter memory: ");
        int memory = Integer.parseInt(scanner.nextLine());
        System.out.println("Enter ram: ");
        int ram = Integer.parseInt(scanner.nextLine());
        System.out.println("Enter GPU: ");
        String gpu = scanner.nextLine();
        System.out.println("Enter VR support (true/false): ");
        boolean vrSupport = Boolean.parseBoolean(scanner.nextLine());
        GamingTablet gamingTablet = new GamingTablet(brand, model, price, stylusSup, keyboardSup, screenRatio, memory, ram, gpu, vrSupport);
        market.createGamingTablet(gamingTablet);
    }
    public void initSmartPhone(){
        Market market = new Market();
        Scanner scanner = new Scanner(System.in);
        System.out.println("Enter brand: ");
        String brand = scanner.nextLine();
        System.out.println("Enter model: ");
        String model = scanner.nextLine();
        System.out.println("Enter price: ");
        double price = Double.parseDouble(scanner.nextLine());
        System.out.println("Enter memory: ");
        int memory = Integer.parseInt(scanner.nextLine());
        System.out.println("Enter ram: ");
        int ram = Integer.parseInt(scanner.nextLine());
        System.out.println("Enter screen size: ");
        String screenSize = scanner.nextLine();
        System.out.println("Enter OS: ");
        String OS = scanner.nextLine();
        System.out.println("Enter camera: ");
        String camera = scanner.nextLine();
        System.out.println("Enter Face ID (true/false): ");
        boolean faceID = Boolean.parseBoolean(scanner.nextLine());
        System.out.println("Enter Fingerprint Sensor (true/false): ");
        boolean fingerprintSensor = Boolean.parseBoolean(scanner.nextLine());
        Smartphone smartphone = new Smartphone(brand, model, price, ram, memory, screenSize, OS, camera, faceID, fingerprintSensor);
        market.createSmartphone(smartphone);
    }

    public void initDrawTablet(){
        Scanner scanner = new Scanner(System.in);
        Market market = new Market();
        System.out.println("Enter brand: ");
        String brand = scanner.nextLine();
        System.out.println("Enter model: ");
        String model = scanner.nextLine();
        System.out.println("Enter price: ");
        double price = Double.parseDouble(scanner.nextLine());
        System.out.println("Enter stylus support (true/false): ");
        boolean stylusSup = Boolean.parseBoolean(scanner.nextLine());
        System.out.println("Enter keyboard support (true/false): ");
        boolean keyboardSup = Boolean.parseBoolean(scanner.nextLine());
        System.out.println("Enter screen ratio: ");
        String screenRatio = scanner.nextLine();
        System.out.println("Enter Sensure Pressitivity: ");
        int pressureSensitivity = Integer.parseInt(scanner.nextLine());
        System.out.println("Enter eraser support (true/false): ");
        boolean eraser = Boolean.parseBoolean(scanner.nextLine());
        DrawingTablet drawingTablet = new DrawingTablet(brand, model, price, stylusSup, keyboardSup, screenRatio, pressureSensitivity, true);
        market.createDrawingTablet(drawingTablet);
    }
    public void initBusTablet(){
        Scanner scanner = new Scanner(System.in);
        Market market = new Market();
        System.out.println("Enter brand: ");
        String brand = scanner.nextLine();
        System.out.println("Enter model: ");
        String model = scanner.nextLine();
        System.out.println("Enter price: ");
        double price = Double.parseDouble(scanner.nextLine());
        System.out.println("Enter stylus support (true/false): ");
        boolean stylusSup = Boolean.parseBoolean(scanner.nextLine());
        System.out.println("Enter keyboard support (true/false): ");
        boolean keyboardSup = Boolean.parseBoolean(scanner.nextLine());
        System.out.println("Enter screen ratio: ");
        String screenRatio = scanner.nextLine();
        System.out.println("Enter Facial Recognition scanner support (true/false): ");
        boolean facialRecognition = Boolean.parseBoolean(scanner.nextLine());
        System.out.println("Enter Finger Print scanner support (true/false): ");
        boolean fingerprintScanner = Boolean.parseBoolean(scanner.nextLine());
        BusinessTablet businessTablet = new BusinessTablet(brand, model, price, stylusSup, keyboardSup, screenRatio, fingerprintScanner, facialRecognition);
        market.createBusTablet(businessTablet);
    }
    public void readDevices(String tableName) {
        Scanner scanner = new Scanner(System.in);
        try {
            Class.forName("org.postgresql.Driver");
            Connection con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/as3help", "postgres", "mercytop38");
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery("SELECT * FROM public.\"" + tableName + "\"");
            ResultSetMetaData metaData = rs.getMetaData();
            int columnCount = metaData.getColumnCount();

            while (rs.next()) {
                for (int i = 1; i <= columnCount; i++) {
                    if (metaData.getColumnType(i) == Types.BOOLEAN) {
                        boolean columnValue = rs.getBoolean(i);
                        System.out.println(columnValue ? "true" : "false");
                    } else {
                        System.out.println(metaData.getColumnName(i) + ": " +rs.getObject(i));
                    }
                }
                System.out.println();
            }
            con.close();
        } catch (Exception e) {
            System.out.println("exception: " + e.getMessage());
        }
    }
    public void deleteDevice(int id) {
        Scanner scanner = new Scanner(System.in);
        String path = scanner.nextLine();
        try {
            Class.forName("org.postgresql.Driver");
            Connection con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/as3help", "postgres", "mercytop38");
            PreparedStatement st = con.prepareStatement("DELETE FROM public.\""+path+"t\" WHERE id = ?");
            st.setInt(1, id);
            int result = st.executeUpdate();
            if (result == 0) {
                System.out.println("Device with id " + id + " not found");
            } else {
                System.out.println("Device with id " + id + " deleted successfully");
            }
            con.close();
        } catch (Exception e) {
            System.out.println("exception: " + e.getMessage());
        }
    }
    public void createGamingTablet(GamingTablet gamingTablet) {
        try {
            Class.forName("org.postgresql.Driver");
            Connection con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/as3help", "postgres", "mercytop38");
            String sql = "INSERT INTO public.\"GamingTablet\" (brand, model, price, stylusSup, keyboardSup, screenRatio, memory, ram, gpu, vrSupport) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?);";
            PreparedStatement st = con.prepareStatement(sql);
            st.setString(1, gamingTablet.getBrand());
            st.setString(2, gamingTablet.getModel());
            st.setDouble(3, gamingTablet.getPrice());
            st.setBoolean(4, gamingTablet.isStylusSup());
            st.setBoolean(5, gamingTablet.isKeyboardSup());
            st.setString(6, gamingTablet.getScreenRatio());
            st.setInt(7, gamingTablet.getMemory());
            st.setInt(8, gamingTablet.getRam());
            st.setString(9, gamingTablet.getGpu());
            st.setBoolean(10, gamingTablet.isVrSupport());
            st.executeUpdate();
            con.close();
        } catch (Exception e) {
            System.out.println("exception: " + e.getMessage());
        }

    }
    public void createBusTablet(BusinessTablet businessTablet) {
        try {
            Class.forName("org.postgresql.Driver");
            Connection con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/as3help", "postgres", "mercytop38");
            String sql = "INSERT INTO public.\"BusinessTablet\" (brand, model, price, Stylus_Support, Keyboard_Support, Screen_Ratio, Fingerprint_Scanner, Facial_Recognition) VALUES (?, ?, ?, ?, ?, ?, ?, ?);";
            PreparedStatement st = con.prepareStatement(sql);
            st.setString(1, businessTablet.getBrand());
            st.setString(2, businessTablet.getModel());
            st.setDouble(3, businessTablet.getPrice());
            st.setBoolean(4, businessTablet.isStylusSup());
            st.setBoolean(5, businessTablet.isKeyboardSup());
            st.setString(6, businessTablet.getScreenRatio());
            st.setBoolean(7, businessTablet.isFingerprintScanner());
            st.setBoolean(8, businessTablet.isFacialRecognition());
            st.executeUpdate();
            con.close();
        } catch (Exception e) {
            System.out.println("exception: " + e.getMessage());
        }
    }
    public void createDrawingTablet(DrawingTablet drawingTablet) {
        try {
            Class.forName("org.postgresql.Driver");
            Connection con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/as3help", "postgres", "mercytop38");
            String sql = "INSERT INTO public.\"DrawingTablet\" (brand, model, price, stylus_support, keyboard_support, screen_ratio,pressure_sensitivity, eraser) VALUES (?, ?, ?, ?, ?, ?, ?, ?);";
            PreparedStatement st = con.prepareStatement(sql);
            st.setString(1, drawingTablet.getBrand());
            st.setString(2, drawingTablet.getModel());
            st.setDouble(3, drawingTablet.getPrice());
            st.setBoolean(4, drawingTablet.isStylusSup());
            st.setBoolean(5, drawingTablet.isKeyboardSup());
            st.setString(6, drawingTablet.getScreenRatio());
            st.setInt(7, drawingTablet.getPressureSensitivity());
            st.setBoolean(8, drawingTablet.hasEraser());
            st.executeUpdate();
            con.close();
        } catch (Exception e) {
            System.out.println("exception: " + e.getMessage());
        }
    }
    public void createMobilePhone(MobilePhone mobilephone){
        try {
            Class.forName("org.postgresql.Driver");
            Connection con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/as3help", "postgres", "mercytop38");
            String sql = "INSERT INTO public.\"MobilePhone\" (brand, model, price, ram, memory, screen_size, camera, dual_sim) VALUES (?, ?, ?, ?, ?, ?, ?, ?);";
            PreparedStatement st = con.prepareStatement(sql);
            st.setString(1, mobilephone.getBrand());
            st.setString(2, mobilephone.getModel());
            st.setDouble(3, mobilephone.getPrice());
            st.setInt(4, mobilephone.getRam());
            st.setInt(5, mobilephone.getMemory());
            st.setString(6, mobilephone.getScreenSize());
            st.setString(7, mobilephone.getCamera());
            st.setBoolean(8, mobilephone.isDualSim());
            st.executeUpdate();
            con.close();
        } catch (Exception e) {
            System.out.println("exception: " + e.getMessage());
        }
    }
    public void createSmartphone(Smartphone smartphone){
        try {
            Class.forName("org.postgresql.Driver");
            Connection con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/as3help", "postgres", "mercytop38");
            String sql = "INSERT INTO public.\"Smartphone\" (brand, model, price, ram, memory, screen_size, camera, os, face_id, fingerprint_sensor) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?);";
            PreparedStatement st = con.prepareStatement(sql);
            st.setString(1, smartphone.getBrand());
            st.setString(2, smartphone.getModel());
            st.setDouble(3, smartphone.getPrice());
            st.setInt(4, smartphone.getRam());
            st.setInt(5, smartphone.getMemory());
            st.setString(6, smartphone.getScreenSize());
            st.setString(7, smartphone.getCamera());
            st.setString(8, smartphone.getOS());
            st.setBoolean(9, smartphone.isFaceID());
            st.setBoolean(10, smartphone.isFingerprintSensor());
            st.executeUpdate();
            con.close();
        } catch (Exception e) {
            System.out.println("exception: " + e.getMessage());
        }
    }
    public void createSmartWatch(Smartwatch smartwatch){
        try {
            Class.forName("org.postgresql.Driver");
            Connection con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/as3help", "postgres", "mercytop38");
            String sql = "INSERT INTO public.\"Smartwatch\" (brand, model, price, type, operating_system, fitness_tracker, heart_rate) VALUES (?, ?, ?, ?, ?, ?, ?);";
            PreparedStatement st = con.prepareStatement(sql);
            st.setString(1, smartwatch.getBrand());
            st.setString(2, smartwatch.getModel());
            st.setDouble(3, smartwatch.getPrice());
            st.setString(4, smartwatch.getType());
            st.setString(5, smartwatch.getOperatingSystem());
            st.setBoolean(6, smartwatch.isHeartRate());
            st.setBoolean(7, smartwatch.isFitnessTracker());
            st.executeUpdate();
            con.close();
        } catch (Exception e) {
            System.out.println("exception: " + e.getMessage());
        }
    }
    public void createHeadphones(Headphones headphones){
        try {
            Class.forName("org.postgresql.Driver");
            Connection con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/as3help", "postgres", "mercytop38");
            String sql = "INSERT INTO public.\"Headphones\" (brand, model, price, type, audio_quality, noise_cancel) VALUES (?, ?, ?, ?, ?, ?);";
            PreparedStatement st = con.prepareStatement(sql);
            st.setString(1, headphones.getBrand());
            st.setString(2, headphones.getModel());
            st.setDouble(3, headphones.getPrice());
            st.setString(4, headphones.getType());
            st.setString(5, headphones.getAudioQuality());
            st.setBoolean(6, headphones.isNoiseCancel());
            st.executeUpdate();
            con.close();
        } catch (Exception e) {
            System.out.println("exception: " + e.getMessage());
        }
    }
    public void updateGamingTablet(int id, GamingTablet gamingTablet) {
        try {
            Class.forName("org.postgresql.Driver");
            Connection con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/as3help", "postgres", "mercytop38");
            PreparedStatement pstmt = con.prepareStatement("UPDATE public.\"GamingTablet\" SET brand = ?, model = ?, price = ?, stylusSup = ?, keyboardSup = ?, screenRatio = ?, memory = ?, ram = ?, gpu = ?, vrSupport = ? WHERE id = ?");
            pstmt.setString(1, gamingTablet.getBrand());
            pstmt.setString(2, gamingTablet.getModel());
            pstmt.setDouble(3, gamingTablet.getPrice());
            pstmt.setBoolean(4, gamingTablet.isStylusSup());
            pstmt.setBoolean(5, gamingTablet.isKeyboardSup());
            pstmt.setString(6, gamingTablet.getScreenRatio());
            pstmt.setInt(7, gamingTablet.getMemory());
            pstmt.setInt(8, gamingTablet.getRam());
            pstmt.setString(9, gamingTablet.getGpu());
            pstmt.setBoolean(10, gamingTablet.isVrSupport());
            pstmt.setInt(11, id);
            int i = pstmt.executeUpdate();
            System.out.println(i + " records updated");
            con.close();
        } catch (Exception e) {
            System.out.println("exception: " + e.getMessage());
        }
    }
}

