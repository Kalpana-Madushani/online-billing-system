package servlet;

import model.Book;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/books")
public class BookServlet extends HttpServlet {

    private static List<Book> bookList = new ArrayList<>();

    @Override
    public void init() throws ServletException {
        super.init();
        // Dummy data (can be fetched from DB instead)
        bookList.add(new Book(1, "The Great Gatsby", "F. Scott Fitzgerald", "Fiction", 15, "Scribner", 1925, 2500.00, "https://picsum.photos/200/300"));
        bookList.add(new Book(2, "To Kill a Mockingbird", "Harper Lee", "Fiction", 3, "Harper Perennial", 1960, 3200.00, "https://picsum.photos/200/300"));
        bookList.add(new Book(3, "Clean Code", "Robert C. Martin", "Technology", 0, "Prentice Hall", 2008, 4500.00, "https://picsum.photos/200/300"));
        bookList.add(new Book(4, "Sapiens", "Yuval Noah Harari", "History", 22, "Harper", 2011, 3800.00, "https://picsum.photos/200/300"));
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setAttribute("books", bookList);
        req.getRequestDispatcher("books.jsp").forward(req, resp); // change to your JSP file name
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        String title = req.getParameter("title");
        String author = req.getParameter("author");
        String category = req.getParameter("category");
        int stock = Integer.parseInt(req.getParameter("stock"));
        String publisher = req.getParameter("publisher");
        int year = Integer.parseInt(req.getParameter("year"));
        double price = Double.parseDouble(req.getParameter("price"));
        String imageUrl = req.getParameter("imageUrl");

        int id = bookList.size() + 1;
        Book newBook = new Book(id, title, author, category, stock, publisher, year, price, imageUrl);
        bookList.add(newBook);
        resp.sendRedirect("books");
    }
}
