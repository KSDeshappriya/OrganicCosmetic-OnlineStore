<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, java.util.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>View Articles</title>
        <!-- Bootstrap CSS -->
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
        <style>
            /* Add custom styles here */
            body {
                padding-top: 50px; /* Adjust according to navbar height */
            }
            .article-container {
                margin-bottom: 20px;
            }
            .pagination {
                justify-content: center;
                margin-top: 20px;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <%
                int articlesPerPage = 1; // Number of articles to display per page
                int currentPage = 1; // Default to the first page
                if (request.getParameter("page") != null) {
                    currentPage = Integer.parseInt(request.getParameter("page"));
                }
                int offset = (currentPage - 1) * articlesPerPage;

                try {
                    Class.forName("com.mysql.jdbc.Driver");
                    String jdbcUrl = "jdbc:mysql://localhost:3306/OrganicCosmeticStore";
                    String jdbcUser = "root";
                    String jdbcPassword = "";
                    Connection conn = DriverManager.getConnection(jdbcUrl, jdbcUser, jdbcPassword);
                    Statement stmt = conn.createStatement();

                    // Query to fetch articles for the current page
                    String query = "SELECT * FROM articles LIMIT " + articlesPerPage + " OFFSET " + offset;
                    ResultSet rs = stmt.executeQuery(query);

                    while (rs.next()) {
                        String title = rs.getString("title");
                        String content = rs.getString("content");
            %>
            <h1 class="card-title"><%= title%></h1>
            <div class="article-container">

                <div class="card">
                    <div class="card-body">

                        <p class="card-text"><%= content%></p>
                    </div>
                </div>
                <%
                    }
                    rs.close();

                    // Query to count total number of articles
                    ResultSet countRs = stmt.executeQuery("SELECT COUNT(*) AS total FROM articles");
                    countRs.next();
                    int totalArticles = countRs.getInt("total");
                    countRs.close();

                    stmt.close();
                    conn.close();

                    // Pagination links
                    int totalPages = (int) Math.ceil((double) totalArticles / articlesPerPage);
                %>
            </div>
            <nav aria-label="Page navigation">
                <ul class="pagination justify-content-center">
                    <% if (currentPage > 1) {%>
                    <li class="page-item">
                        <a class="page-link" href="ViewArticles.jsp?page=<%= currentPage - 1%>" aria-label="Previous">
                            <span aria-hidden="true">&laquo;</span>
                            <span class="sr-only">Previous</span>
                        </a>
                    </li>
                    <% }%>
                    <li class="page-item disabled">
                        <span class="page-link">Page <%= currentPage%> of <%= totalPages%></span>
                    </li>
                    <% if (currentPage < totalPages) {%>
                    <li class="page-item">
                        <a class="page-link" href="ViewArticles.jsp?page=<%= currentPage + 1%>" aria-label="Next">
                            <span aria-hidden="true">&raquo;</span>
                            <span class="sr-only">Next</span>
                        </a>
                    </li>
                    <% } %>
                </ul>
            </nav>
            <%
                } catch (Exception e) {
                    e.printStackTrace();
                }
            %>
        </div>

        <!-- Bootstrap JS -->
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    </body>
</html>
