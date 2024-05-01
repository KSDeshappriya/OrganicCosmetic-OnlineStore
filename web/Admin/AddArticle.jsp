<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Article Editor</title>
    <!-- jquery, bootstrap -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
          integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
          crossorigin="anonymous">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
            integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
            crossorigin="anonymous"></script>
    <!-- add summernote -->
    <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>
</head>
<body>
<form id="articleForm" action="../SaveArticleServlet" method="post">
    <div class="container">
        <h1>Article Editor</h1>
        <div class="form-group">
            <label for="title">Title:</label>
            <input type="text" class="form-control" id="title" name="title" placeholder="Enter the title of your article">
        </div>
        <div id="summernote"></div>
        <button type="submit" class="btn btn-primary mt-3">Save</button>
    </div>
</form>
<script>
    $(document).ready(function () {
        $('#summernote').summernote({
            height: 300,
            callbacks: {
                // Custom placeholder functionality
                onInit: function () {
                    $('.note-placeholder').text("Write your article here...");
                }
            }
        });

        $('#articleForm').submit(function (e) {
            e.preventDefault(); // Prevent the form from submitting normally
            // Get the HTML content from the Summernote editor
            var content = $('#summernote').summernote('code');

            // Check if content is null or empty
            if (!content.trim()) {
                alert('Content cannot be empty!');
                return; // Abort the submission
            }

            // Log the content to the console
            console.log(content);

            // Send the content to the server via AJAX
            $.post('../SaveArticleServlet', {title: $('#title').val(), content: content}, function (data) {
                console.log('Server response:', data);
                // Optionally, you can display a success message to the user or redirect them to another page
                alert('Article saved successfully!');
            });
        });
    });
</script>
</body>
</html>
