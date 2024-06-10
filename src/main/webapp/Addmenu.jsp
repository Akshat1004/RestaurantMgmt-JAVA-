<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Add New Menu Item</title>
    <link rel="stylesheet" href="css/reg.css">
    
</head>
<body>
    <h1>Add New Menu Item</h1>
    <form action="Addmenuitem" method="POST" enctype="multipart/form-data">
        <label for="name">Name:</label>
        <input type="text" id="name" name="name" required><br><br>
        
        <label for="description">Description:</label>
        <textarea id="description" name="description" required></textarea><br><br>
        
        <label for="price">Price:</label>
        <input type="text" id="price" name="price" required><br><br>
        
        <label>category</label>
        <select name="Course">
              <option value="starters">Starters</option>
              <option value="main_course">Main Course</option>
              <option value="beverage">Beverage</option>
              <option value="dessert">Dessert</option>
        </select><br><br>
        <label for="image">Image:</label>
        <input type="file" id="image" name="image" required><br><br>
        <input type="submit" value="Add Item">
    </form>
</body>
</html>
