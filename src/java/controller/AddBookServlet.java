package controller;

import com.google.gson.Gson;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import java.util.UUID;

@WebServlet("/addBook")
@MultipartConfig(fileSizeThreshold = 1024 * 1024, // 1MB
                 maxFileSize = 1024 * 1024 * 10, // 10MB
                 maxRequestSize = 1024 * 1024 * 50) // 50MB
public class AddBookServlet extends HttpServlet {
    private static final String DB_URL = "jdbc:mysql://localhost:3306/pahanaedu";
    private static final String DB_USER = "root";
    private static final String DB_PASSWORD = "";
    private static final String UPLOAD_DIRECTORY = "Uploads";
    private static final Gson gson = new Gson();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("application/json");
        PrintWriter out = response.getWriter();

        try {
            // Retrieve form parameters
            String title = request.getParameter("title");
            String author = request.getParameter("author");
            String isbn = request.getParameter("isbn");
            String category = request.getParameter("category");
            String publisher = request.getParameter("publisher");
            String yearStr = request.getParameter("year");
            String priceStr = request.getParameter("price");
            String stockStr = request.getParameter("stock");
            String description = request.getParameter("description");
            Part filePart = request.getPart("image");
            String imageUrl = null;

            // Basic validation
            if (title == null || title.trim().isEmpty() ||
                author == null || author.trim().isEmpty() ||
                isbn == null || isbn.trim().isEmpty() ||
                category == null || category.trim().isEmpty() ||
                publisher == null || publisher.trim().isEmpty() ||
                yearStr == null || yearStr.trim().isEmpty() ||
                priceStr == null || priceStr.trim().isEmpty() ||
                stockStr == null || stockStr.trim().isEmpty()) {
                response.setStatus(HttpServletResponse.SC_BAD_REQUEST);
                out.println(gson.toJson(new Response(false, "All required fields must be provided")));
                return;
            }

            // Parse numeric fields
            int year, stock;
            double price;
            try {
                year = Integer.parseInt(yearStr);
                price = Double.parseDouble(priceStr);
                stock = Integer.parseInt(stockStr);
            } catch (NumberFormatException e) {
                response.setStatus(HttpServletResponse.SC_BAD_REQUEST);
                out.println(gson.toJson(new Response(false, "Invalid number format for year, price, or stock")));
                return;
            }

            // Handle file upload
            if (filePart != null && filePart.getSize() > 0) {
                String fileName = UUID.randomUUID().toString() + "_" + filePart.getSubmittedFileName();
                String uploadPath = getServletContext().getRealPath("") + File.separator + UPLOAD_DIRECTORY;
                File uploadDir = new File(uploadPath);
                if (!uploadDir.exists()) {
                    uploadDir.mkdir();
                }
                String filePath = uploadPath + File.separator + fileName;
                filePart.write(filePath);
                imageUrl = UPLOAD_DIRECTORY + "/" + fileName;
            }

            // Database connection
            Class.forName("com.mysql.cj.jdbc.Driver");
            try (Connection conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
                 PreparedStatement stmt = conn.prepareStatement(
                     "INSERT INTO book (title, author, isbn, category, stock, publisher, year, price, image_url, description) " +
                     "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)", 
                     Statement.RETURN_GENERATED_KEYS)) {
                
                stmt.setString(1, title);
                stmt.setString(2, author);
                stmt.setString(3, isbn);
                stmt.setString(4, category);
                stmt.setInt(5, stock);
                stmt.setString(6, publisher);
                stmt.setInt(7, year);
                stmt.setDouble(8, price);
                stmt.setString(9, imageUrl);
                stmt.setString(10, description);

                int rowsAffected = stmt.executeUpdate();
                if (rowsAffected > 0) {
                    out.println(gson.toJson(new Response(true, "Book added successfully")));
                } else {
                    response.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
                    out.println(gson.toJson(new Response(false, "Failed to add book")));
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            response.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
            out.println(gson.toJson(new Response(false, e.getMessage())));
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("application/json");
        PrintWriter out = response.getWriter();
        List<Book> books = new ArrayList<>();

        try (Connection conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
             Statement stmt = conn.createStatement();
             ResultSet rs = stmt.executeQuery("SELECT * FROM book")) {
            
            while (rs.next()) {
                Book book = new Book();
                book.setId(rs.getString("id"));
                book.setTitle(rs.getString("title"));
                book.setAuthor(rs.getString("author"));
                book.setIsbn(rs.getString("isbn"));
                book.setCategory(rs.getString("category"));
                book.setStock(rs.getInt("stock"));
                book.setPublisher(rs.getString("publisher"));
                book.setYear(rs.getInt("year"));
                book.setPrice(rs.getDouble("price"));
                book.setImageUrl(rs.getString("image_url"));
                book.setDescription(rs.getString("description"));
                book.setCreatedDate(rs.getString("created_date"));
                books.add(book);
            }
            out.println(gson.toJson(books));
        } catch (SQLException e) {
            e.printStackTrace();
            response.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
            out.println(gson.toJson(new Response(false, "Error fetching books: " + e.getMessage())));
        }   
    }

    // Response class for JSON serialization
    private static class Response {
        boolean success;
        String message;

        Response(boolean success, String message) {
            this.success = success;
            this.message = message;
        }
    }

    // Book class for data transfer
    public static class Book {
        private String id;
        private String title;
        private String author;
        private String isbn;
        private String category;
        private int stock;
        private String publisher;
        private int year;
        private double price;
        private String imageUrl;
        private String description;
        private String createdDate;

        // Getters and setters
        public String getId() { return id; }
        public void setId(String id) { this.id = id; }
        public String getTitle() { return title; }
        public void setTitle(String title) { this.title = title; }
        public String getAuthor() { return author; }
        public void setAuthor(String author) { this.author = author; }
        public String getIsbn() { return isbn; }
        public void setIsbn(String isbn) { this.isbn = isbn; }
        public String getCategory() { return category; }
        public void setCategory(String category) { this.category = category; }
        public int getStock() { return stock; }
        public void setStock(int stock) { this.stock = stock; }
        public String getPublisher() { return publisher; }
        public void setPublisher(String publisher) { this.publisher = publisher; }
        public int getYear() { return year; }
        public void setYear(int year) { this.year = year; }
        public double getPrice() { return price; }
        public void setPrice(double price) { this.price = price; }
        public String getImageUrl() { return imageUrl; }
        public void setImageUrl(String imageUrl) { this.imageUrl = imageUrl; }
        public String getDescription() { return description; }
        public void setDescription(String description) { this.description = description; }
        public String getCreatedDate() { return createdDate; }
        public void setCreatedDate(String createdDate) { this.createdDate = createdDate; }
    }
}