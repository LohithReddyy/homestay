<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Booking</title>
    <script src="https://checkout.razorpay.com/v1/checkout.js"></script>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }

        .container {
            max-width: 600px;
            margin: 50px auto;
            background: #fff;
            border-radius: 10px;
            box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1);
            padding: 20px;
        }

        h1 {
            text-align: center;
            color: #444;
            margin-bottom: 20px;
        }

        .form-group {
            margin-bottom: 15px;
        }

        label {
            display: block;
            font-size: 14px;
            color: #555;
            margin-bottom: 5px;
        }

        input[type="text"], 
        input[type="email"], 
        input[type="number"], 
        input[type="date"] {
            width: 100%;
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 5px;
            box-sizing: border-box;
            font-size: 14px;
            color: #333;
        }

        input[readonly] {
            background-color: #e9ecef;
            color: #777;
        }

        #payNow {
            width: 100%;
            padding: 10px;
            background-color: #28a745;
            color: #fff;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            font-weight: bold;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        #payNow:hover {
            background-color: #218838;
        }
    </style>
</head>

<body>
    <div class="container">
        <h1>Add a New Booking</h1>
        <form id="bookingForm">
            <div class="form-group">
                <label for="homeId">Home:</label>
                <input type="text" name="homeId" id="homeId" value="${param.homeId}" readonly>
            </div>

            <div class="form-group">
                <label for="touristId">Tourist:</label>
                <input type="text" name="touristId" id="touristId" value="${param.touristId}" readonly>
            </div>

            <div class="form-group">
                <label for="pricePerNight">Price per Night:</label>
                <input type="text" name="pricePerNight" id="pricePerNight" value="${param.pricePerNight}" readonly>
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

            <input type="button" id="payNow" value="Proceed to Payment">
        </form>
    </div>

    <script>
        document.getElementById('payNow').addEventListener('click', function () {
            const bookingData = {
                homeId: document.getElementById('homeId').value,
                touristId: document.getElementById('touristId').value,
                email: document.getElementById('email').value,
                numberOfGuests: document.getElementById('numberOfGuests').value,
                startDate: document.getElementById('startDate').value,
                endDate: document.getElementById('endDate').value,
                pricePerNight: document.getElementById('pricePerNight').value
            };

            fetch('/initiatePayment', {
                method: 'POST',
                headers: { 'Content-Type': 'application/json' },
                body: JSON.stringify(bookingData)
            })
            .then(response => response.json())
            .then(data => {
                const options = {
                    key: "rzp_test_FmhSMoagxjdqsj",
                    amount: bookingData.pricePerNight * 100, // Convert price to paise
                    currency: "INR",
                    name: "Book Your Homestay",
                    description: `Booking payment for Home ID ${bookingData.homeId}`,
                    handler: function (response) {
                        alert(`Payment of Rs. ${bookingData.pricePerNight} was successful!`);
                        window.location.href = "/";
                    },
                    prefill: {
                        email: bookingData.email
                    }
                };

                const rzp = new Razorpay(options);
                rzp.open();
            })
            .catch(err => console.error('Payment initialization failed:', err));
        });
    </script>
</body>
</html>
