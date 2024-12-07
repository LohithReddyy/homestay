<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Home</title>
    <style>
        :root {
            --primary: #FF385C;
            --primary-dark: #E31C5F;
            --secondary: #00A699;
            --background: #FFFFFF;
            --gray-50: #F9FAFB;
            --gray-100: #F3F4F6;
            --gray-200: #E5E7EB;
            --gray-300: #D1D5DB;
            --gray-700: #374151;
            --font-family: 'Poppins', sans-serif;
        }

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: var(--font-family);
            background-color: var(--gray-50);
            color: var(--gray-700);
            line-height: 1.6;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            padding: 1rem;
        }

        .container {
            background-color: var(--background);
            border-radius: 16px;
            box-shadow: 0 8px 24px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 500px;
            padding: 2.5rem;
        }

        h2 {
            font-size: 1.8rem;
            color: var(--primary);
            text-align: center;
            margin-bottom: 1.5rem;
        }

        form {
            display: flex;
            flex-direction: column;
            gap: 1.5rem;
        }

        label {
            font-weight: 500;
            margin-bottom: 0.5rem;
        }

        input,
        select {
            width: 100%;
            padding: 0.75rem;
            border: 2px solid var(--gray-200);
            border-radius: 8px;
            font-size: 1rem;
            transition: all 0.3s ease;
        }

        input:focus,
        select:focus {
            outline: none;
            border-color: var(--primary);
            box-shadow: 0 0 0 4px rgba(255, 56, 92, 0.1);
        }

        button {
            padding: 0.75rem;
            background: linear-gradient(135deg, var(--primary) 0%, var(--primary-dark) 100%);
            color: white;
            border: none;
            border-radius: 8px;
            font-size: 1.1rem;
            font-weight: 600;
            cursor: pointer;
            transition: all 0.3s ease;
        }

        button:hover {
            transform: translateY(-2px);
            box-shadow: 0 4px 12px rgba(255, 56, 92, 0.25);
        }

        .form-group {
            display: flex;
            flex-direction: column;
        }

        .form-group:last-child {
            margin-bottom: 0;
        }

        @media (max-width: 768px) {
            .container {
                padding: 2rem;
            }
        }

        @media (max-width: 480px) {
            .container {
                padding: 1.5rem;
            }

            h2 {
                font-size: 1.5rem;
            }
        }
    </style>
</head>

<body>
    <div class="container">
        <h2>Add New Home</h2>
        <form action="addhomedetails" method="post" enctype="multipart/form-data">
            <div class="form-group">
                <label for="name">Name:</label>
                <input type="text" id="name" name="name" required>
            </div>

            <div class="form-group">
                <label for="location">Location:</label>
                <input type="text" id="location" name="location" required>
            </div>

            <div class="form-group">
                <label for="acRequired">AC Required:</label>
                <select id="acRequired" name="ac" required>
                    <option value="true">Yes</option>
                    <option value="false">No</option>
                </select>
            </div>

            <div class="form-group">
                <label for="maxAdults">Max Adults:</label>
                <input type="number" id="maxAdults" name="maxAdults" required>
            </div>

            <div class="form-group">
                <label for="htype">Home Type:</label>
                <select id="htype" name="type" required>
                    <option value="Room">Room</option>
                    <option value="Villa">Villa</option>
                    <option value="Homestay">Homestay</option>
                    <option value="Hotel">Hotel</option>
                </select>
            </div>

            <div class="form-group">
                <label for="available">Available (true/false):</label>
                <input type="text" id="available" name="available" required>
            </div>

            <div class="form-group">
                <label for="pricePerNight">Price per Night:</label>
                <input type="number" id="pricePerNight" name="pricepernight" required>
            </div>

            <div class="form-group">
                <label for="image">Upload Image:</label>
                <input type="file" id="image" name="image" required>
            </div>

            <button type="submit">Add Home</button>
        </form>
    </div>
</body>

</html>
