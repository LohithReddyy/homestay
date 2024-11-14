<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Become a Host | Travel & HomeStay</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/flatpickr/dist/flatpickr.min.css">
    <script src="https://cdn.jsdelivr.net/npm/flatpickr"></script>
    <style>
        :root {
            --primary: #FF385C;
            --primary-dark: #E31C5F;
            --secondary: #00A699;
            --success: #34D399;
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
        }

        .page-container {
            min-height: 100vh;
            display: flex;
            flex-direction: column;
        }

        .hero-section {
            height: 400px;
            background: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)),
                        url('https://images.unsplash.com/photo-1522708323590-d24dbb6b0267?auto=format&fit=crop&q=80') center/cover;
            color: white;
            text-align: center;
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 2rem;
            margin-top: 70px;
        }

        .hero-content {
            max-width: 800px;
        }

        .hero-content h1 {
            font-size: 3rem;
            margin-bottom: 1rem;
            font-weight: 700;
        }

        .hero-content p {
            font-size: 1.2rem;
            opacity: 0.9;
        }

        .main-content {
            max-width: 1200px;
            margin: -100px auto 0;
            padding: 0 1.5rem;
            position: relative;
            z-index: 1;
        }

        .registration-card {
            background: var(--background);
            border-radius: 20px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
            padding: 2.5rem;
            margin-bottom: 3rem;
        }

        .progress-bar {
            display: flex;
            justify-content: space-between;
            margin-bottom: 3rem;
            position: relative;
        }

        .progress-bar::before {
            content: '';
            position: absolute;
            top: 50%;
            left: 0;
            right: 0;
            height: 2px;
            background: var(--gray-200);
            transform: translateY(-50%);
            z-index: 1;
        }

        .progress-step {
            position: relative;
            z-index: 2;
            background: var(--background);
            width: 40px;
            height: 40px;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            font-weight: 600;
            border: 2px solid var(--gray-200);
            transition: all 0.3s ease;
        }

        .progress-step.active {
            background: var(--primary);
            color: white;
            border-color: var(--primary);
        }

        .progress-step.completed {
            background: var(--success);
            color: white;
            border-color: var(--success);
        }

        .form-section {
            display: none;
        }

        .form-section.active {
            display: block;
            animation: fadeIn 0.5s ease-out forwards;
        }

        @keyframes fadeIn {
            from {
                opacity: 0;
                transform: translateY(20px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        .form-group {
            margin-bottom: 1.5rem;
        }

        .form-group label {
            display: block;
            font-weight: 500;
            margin-bottom: 0.5rem;
        }

        .input-group {
            position: relative;
        }

        .input-group i {
            position: absolute;
            left: 1rem;
            top: 50%;
            transform: translateY(-50%);
            color: var(--gray-300);
        }

        .form-control {
            width: 100%;
            padding: 1rem 1rem 1rem 2.5rem;
            border: 2px solid var(--gray-200);
            border-radius: 10px;
            font-size: 1rem;
            transition: all 0.3s ease;
        }

        .form-control:focus {
            outline: none;
            border-color: var(--primary);
            box-shadow: 0 0 0 4px rgba(255, 56, 92, 0.1);
        }

        .gender-options {
            display: flex;
            gap: 1.5rem;
            margin-top: 0.5rem;
        }

        .gender-option {
            flex: 1;
            padding: 1rem;
            border: 2px solid var(--gray-200);
            border-radius: 10px;
            text-align: center;
            cursor: pointer;
            transition: all 0.3s ease;
        }

        .gender-option:hover {
            border-color: var(--primary);
        }

        .gender-option.selected {
            background: var(--primary);
            color: white;
            border-color: var(--primary);
        }

        .gender-option i {
            font-size: 1.5rem;
            margin-bottom: 0.5rem;
        }

        .form-buttons {
            display: flex;
            justify-content: space-between;
            margin-top: 2rem;
        }

        .btn {
            padding: 1rem 2rem;
            border: none;
            border-radius: 10px;
            font-size: 1rem;
            font-weight: 600;
            cursor: pointer;
            transition: all 0.3s ease;
        }

        .btn-prev {
            background: var(--gray-100);
            color: var(--gray-700);
        }

        .btn-next {
            background: var(--primary);
            color: white;
        }

        .btn:hover {
            transform: translateY(-2px);
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
        }

        .features {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 2rem;
            margin: 3rem 0;
        }

        .feature {
            text-align: center;
            padding: 2rem;
            background: white;
            border-radius: 16px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.05);
            transition: all 0.3s ease;
        }

        .feature:hover {
            transform: translateY(-5px);
            box-shadow: 0 8px 24px rgba(0, 0, 0, 0.1);
        }

        .feature i {
            font-size: 2.5rem;
            color: var(--primary);
            margin-bottom: 1rem;
        }

        .feature h3 {
            font-size: 1.2rem;
            margin-bottom: 0.5rem;
        }

        .feature p {
            color: var(--gray-700);
            font-size: 0.9rem;
        }

        .earnings-calculator {
            background: white;
            padding: 2rem;
            border-radius: 16px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.05);
            margin: 3rem 0;
        }

        .earnings-calculator h2 {
            text-align: center;
            margin-bottom: 2rem;
        }

        .calculator-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 2rem;
        }

        .calculator-input {
            margin-bottom: 1rem;
        }

        .estimated-earnings {
            text-align: center;
            font-size: 2rem;
            color: var(--primary);
            font-weight: 700;
            margin-top: 2rem;
        }

        @media (max-width: 1024px) {
            .features {
                grid-template-columns: repeat(2, 1fr);
            }
        }

        @media (max-width: 768px) {
            .hero-content h1 {
                font-size: 2.5rem;
            }

            .registration-card {
                padding: 2rem;
            }

            .features {
                grid-template-columns: 1fr;
            }
        }

        @media (max-width: 480px) {
            .hero-content h1 {
                font-size: 2rem;
            }

            .registration-card {
                padding: 1.5rem;
            }

            .gender-options {
                flex-direction: column;
            }

            .form-buttons {
                flex-direction: column-reverse;
                gap: 1rem;
            }

            .btn {
                width: 100%;
            }
        }
    </style>
</head>
<body>
    <div class="page-container">
        <jsp:include page="mainnavbar.jsp" />

        <section class="hero-section">
            <div class="hero-content">
                <h1>Become a Host Today</h1>
                <p>Turn your space into an income opportunity and join our global community of hosts</p>
            </div>
        </section>

        <div class="main-content">
            <div class="registration-card">
                <div class="progress-bar">
                    <div class="progress-step active" data-step="1">1</div>
                    <div class="progress-step" data-step="2">2</div>
                    <div class="progress-step" data-step="3">3</div>
                </div>

                <form method="post" action="inserthost" id="registrationForm">
                    <div class="form-section active" data-step="1">
                        <h2>Personal Information</h2>
                        <div class="form-group">
                            <label for="hname">Full Name</label>
                            <div class="input-group">
                                <i class="fas fa-user"></i>
                                <input type="text" id="hname" name="hname" class="form-control" required/>
                            </div>
                        </div>

                        <div class="form-group">
                            <label>Gender</label>
                            <div class="gender-options">
                                <div class="gender-option" data-value="MALE">
                                    <i class="fas fa-male"></i>
                                    <div>Male</div>
                                </div>
                                <div class="gender-option" data-value="FEMALE">
                                    <i class="fas fa-female"></i>
                                    <div>Female</div>
                                </div>
                                <div class="gender-option" data-value="OTHERS">
                                    <i class="fas fa-user"></i>
                                    <div>Others</div>
                                </div>
                            </div>
                            <input type="hidden" name="hgender" id="hgender" required/>
                        </div>

                        <div class="form-group">
                            <label for="hdob">Date of Birth</label>
                            <div class="input-group">
                                <i class="fas fa-calendar"></i>
                                <input type="text" id="hdob" name="hdob" class="form-control" required/>
                            </div>
                        </div>
                    </div>

                    <div class="form-section" data-step="2">
                        <h2>Contact & Location</h2>
                        <div class="form-group">
                            <label for="hemail">Email Address</label>
                            <div class="input-group">
                                <i class="fas fa-envelope"></i>
                                <input type="email" id="hemail" name="hemail" class="form-control" required/>
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="hcontact">Contact Number</label>
                            <div class="input-group">
                                <i class="fas fa-phone"></i>
                                <input type="tel" id="hcontact" name="hcontact" class="form-control" required/>
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="hlocation">Location</label>
                            <div class="input-group">
                                <i class="fas fa-map-marker-alt"></i>
                                <input type="text" id="hlocation" name="hlocation" class="form-control" required/>
                            </div>
                        </div>
                    </div>

                    <div class="form-section" data-step="3">
                        <h2>Account & Banking Details</h2>
                        <div class="form-group">
                            <label for="hpwd">Create Password</label>
                            <div class="input-group">
                                <i class="fas fa-lock"></i>
                                <input type="password" id="hpwd" name="hpwd" class="form-control" required/>
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="hpwd_confirm">Confirm Password</label>
                            <div class="input-group">
                                <i class="fas fa-lock"></i>
                                <input type="password" id="hpwd_confirm" class="form-control" required/>
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="hpan">PAN Card Number</label>
                            <div class="input-group">
                                <i class="fas fa-id-card"></i>
                                <input type="text" id="hpan" name="hpan" class="form-control" required/>
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="hbank">Bank Account Number</label>
                            <div class="input-group">
                                <i class="fas fa-university"></i>
                                <input type="text" id="hbank" name="hbank" class="form-control" required/>
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="hifsc">Bank IFSC Code</label>
                            <div class="input-group">
                                <i class="fas fa-building-columns"></i>
                                <input type="text" id="hifsc" name="hifsc" class="form-control" required/>
                            </div>
                        </div>
                    </div>

                    <div class="form-buttons">
                        <button type="button" class="btn btn-prev" style="display: none;">Previous</button>
                        <button type="button" class="btn btn-next">Next</button>
                    </div>
                </form>
            </div>

            <div class="features">
                <div class="feature">
                    <i class="fas fa-money-bill-wave"></i>
                    <h3>Earn Extra Income</h3>
                    <p>Turn your extra space into a steady stream of income</p>
                </div>
                <div class="feature">
                    <i class="fas fa-shield-alt"></i>
                    <h3>Host Protection</h3>
                    <p>We provide insurance and verification for your safety</p>
                </div>
                <div class="feature">
                    <i class="fas fa-calendar-check"></i>
                    <h3>Flexible Hosting</h3>
                    <p>Host on your schedule and set your own rules</p>
                </div>
            </div>

            <div class="earnings-calculator">
                <h2>Estimate Your Earnings</h2>
                <div class="calculator-grid">
                    <div class="calculator-input">
                        <label>Nightly Rate (₹)</label>
                        <input type="number" id="nightlyRate" class="form-control" value="2000"/>
                    </div>
                    <div class="calculator-input">
                        <label>Occupancy Rate (%)</label>
                        <input type="number" id="occupancyRate" class="form-control" value="70"/>
                    </div>
                </div>
                <div class="estimated-earnings">
                    Potential Monthly Earnings: <span id="monthlyEarnings">₹42,000</span>
                </div>
            </div>
        </div>
    </div>

    <script>
        // Initialize date picker
        flatpickr("#hdob", {
            maxDate: new Date().fp_incr(-6570), // 18 years ago
            dateFormat: "Y-m-d"
        });

        // Form navigation
        const form = document.getElementById('registrationForm');
        const sections = form.querySelectorAll('.form-section');
        const progressSteps = document.querySelectorAll('.progress-step');
        const nextBtn = form.querySelector('.btn-next');
        const prevBtn = form.querySelector('.btn-prev');
        let currentStep = 1;

        function updateButtons() {
            if (currentStep === 1) {
                prevBtn.style.display = 'none';
            } else {
                prevBtn.style.display = 'block';
            }

            if (currentStep === 3) {
                nextBtn.textContent = 'Register';
            } else {
                nextBtn.textContent = 'Next';
            }
        }

        function updateProgress() {
            progressSteps.forEach((step, idx) => {
                if (idx + 1 < currentStep) {
                    step.classList.add('completed');
                    step.classList.remove('active');
                } else if (idx + 1 === currentStep) {
                    step.classList.add('active');
                    step.classList.remove('completed');
                } else {
                    step.classList.remove('completed', 'active');
                }
            });
        }

        function showSection(step) {
            sections.forEach(section => {
                section.classList.remove('active');
                if (section.dataset.step === step.toString()) {
                    section.classList.add('active');
                }
            });
        }

        nextBtn.addEventListener('click', () => {
            if (currentStep === 3) {
                if (validateForm()) {
                    form.submit();
                }
            } else {
                currentStep++;
                showSection(currentStep);
                updateButtons();
                updateProgress();
            }
        });

        prevBtn.addEventListener('click', () => {
            currentStep--;
            showSection(currentStep);
            updateButtons();
            updateProgress();
        });

        // Gender selection
        const genderOptions = document.querySelectorAll('.gender-option');
        const genderInput = document.getElementById('hgender');

        genderOptions.forEach(option => {
            option.addEventListener('click', () => {
                genderOptions.forEach(opt => opt.classList.remove('selected'));
                option.classList.add('selected');
                genderInput.value = option.dataset.value;
            });
        });

        // Form validation
        function validateForm() {
            const password = document.getElementById('hpwd').value;
            const confirmPassword = document.getElementById('hpwd_confirm').value;

            if (password !== confirmPassword) {
                alert('Passwords do not match!');
                return false;
            }

            if (password.length < 8) {
                alert('Password must be at least 8 characters long!');
                return false;
            }

            return true;
        }

        // Earnings calculator
        function calculateEarnings() {
            const nightlyRate = document.getElementById('nightlyRate').value;
            const occupancyRate = document.getElementById('occupancyRate').value;
            const monthlyEarnings = Math.round((nightlyRate * 30 * occupancyRate) / 100);
            document.getElementById('monthlyEarnings').textContent = '₹' + monthlyEarnings.toLocaleString();
        }

        document.getElementById('nightlyRate').addEventListener('input', calculateEarnings);
        document.getElementById('occupancyRate').addEventListener('input', calculateEarnings);
    </script>
</body>
</html>