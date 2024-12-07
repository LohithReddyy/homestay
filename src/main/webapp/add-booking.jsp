<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Booking</title>
    <style>
        :root {
            --primary: #FF385C;
            --primary-dark: #E31C5F;
            --secondary: #00A699;
            --background: #FFFFFF;
            --gray-50: #F9FAFB;
            --gray-200: #E5E7EB;
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
            max-width: 600px;
            padding: 2.5rem;
        }

        h1 {
            text-align: center;
            font-size: 2rem;
            color: var(--primary);
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
            transition: border-color 0.3s ease, box-shadow 0.3s ease;
        }

        input:focus,
        select:focus {
            outline: none;
            border-color: var(--primary);
            box-shadow: 0 0 0 4px rgba(255, 56, 92, 0.1);
        }

        input[type="submit"] {
            padding: 0.75rem;
            background: linear-gradient(135deg, var(--primary) 0%, var(--primary-dark) 100%);
            color: white;
            border: none;
            border-radius: 8px;
            font-size: 1.1rem;
            font-weight: 600;
            cursor: pointer;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        input[type="submit"]:hover {
            transform: translateY(-2px);
            box-shadow: 0 4px 12px rgba(255, 56, 92, 0.25);
        }

        .form-group {
            display: flex;
            flex-direction: column;
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

            h1 {
                font-size: 1.75rem;
            }
        }
    </style>
</head>

<body>
    <div class="container">
        <h1>Add a New Booking</h1>
        <form action="/bookings/add" method="post">
            <div class="form-group">
                <label for="homeId">Home:</label>
                <select name="homeId" id="homeId" required>
                    <c:forEach var="home" items="${homeslist}">
                        <option value="${home.id}">${home.name}</option>
                    </c:forEach>
                </select>
            </div>

            <div class="form-group">
                <label for="touristId">Tourist:</label>
                <select name="touristId" id="touristId" required>
                    <c:forEach var="tourist" items="${touristslist}">
                        <option value="${tourist.id}">${tourist.name}</option>
                    </c:forEach>
                </select>
            </div>

            <div class="form-group">
                <label for="email">Email:</label>
                <input type="email" name="email" id="email" required>
            </div>

            <div class="form-group">
                <label for="numberOfGuests">Number of Guests:</label>
                <input type="number" name="numberOfGuests" id="numberOfGuests" required>
            </div>

            <div class="form-group">
                <label for="startDate">Start Date:</label>
                <input type="date" name="startDate" id="startDate" required>
            </div>

            <div class="form-group">
                <label for="endDate">End Date:</label>
                <input type="date" name="endDate" id="endDate" required>
            </div>

            <input type="submit" value="Create Booking">
        </form>
    </div>
</body>

</html>
