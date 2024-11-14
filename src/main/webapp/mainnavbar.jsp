<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!-- Include required CSS and JS -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
<link href="https://fonts.googleapis.com/css2?family=Plus+Jakarta+Sans:wght@400;500;600;700&display=swap" rel="stylesheet">
<link rel="stylesheet" href="${pageContext.request.contextPath}/style.css">

<nav class="navbar">
    <div class="container">
        <div class="nav-content" id="navContent">
            <a href="${pageContext.request.contextPath}/" class="nav-brand">
                <i class="fas fa-home"></i> Travel & HomeStay
            </a>

            <button class="mobile-toggle" onclick="toggleNav()">
                <i class="fas fa-bars"></i>
            </button>

            <div class="nav-links">
                <a href="${pageContext.request.contextPath}/" class="nav-item ${pageContext.request.servletPath eq '/index.jsp' || pageContext.request.servletPath eq '/home.jsp' ? 'active' : ''}">Home</a>
                <a href="${pageContext.request.contextPath}/findhomestay" class="nav-item ${pageContext.request.servletPath eq '/findhomestay.jsp' ? 'active' : ''}">Find a HomeStay</a>
                <a href="${pageContext.request.contextPath}/listroom" class="nav-item ${pageContext.request.servletPath eq '/listroom.jsp' ? 'active' : ''}">List a Room</a>
            </div>

            <div class="search-container">
                <i class="fas fa-search search-icon"></i>
                <input type="text" class="search-box" placeholder="Where would you like to go?">
            </div>

            <div class="nav-actions">
                <c:choose>
                    <c:when test="${empty sessionScope.user}">
                        <div class="dropdown" onclick="toggleDropdown(this)">
                            <button class="dropdown-toggle">
                                <i class="fas fa-user"></i> Sign up
                            </button>
                            <div class="dropdown-menu">
                                <a href="${pageContext.request.contextPath}/hostregistration" class="dropdown-item">
                                    <i class="fas fa-home"></i> Host
                                </a>
                                <a href="${pageContext.request.contextPath}/touristregistration" class="dropdown-item">
                                    <i class="fas fa-plane"></i> Tourist
                                </a>
                            </div>
                        </div>

                        <div class="dropdown" onclick="toggleDropdown(this)">
                            <button class="dropdown-toggle">
                                <i class="fas fa-sign-in-alt"></i> Login
                            </button>
                            <div class="dropdown-menu">
                                <a href="${pageContext.request.contextPath}/adminlogin" class="dropdown-item">
                                    <i class="fas fa-user-shield"></i> Admin Login
                                </a>
                                <a href="${pageContext.request.contextPath}/hostlogin" class="dropdown-item">
                                    <i class="fas fa-home"></i> Host Login
                                </a>
                                <a href="${pageContext.request.contextPath}/touristlogin" class="dropdown-item">
                                    <i class="fas fa-plane"></i> Tourist Login
                                </a>
                            </div>
                        </div>
                    </c:when>
                    <c:otherwise>
                        <div class="dropdown" onclick="toggleDropdown(this)">
                            <button class="dropdown-toggle">
                                <i class="fas fa-user-circle"></i> ${sessionScope.user.name}
                            </button>
                            <div class="dropdown-menu">
                                <a href="${pageContext.request.contextPath}/profile" class="dropdown-item">
                                    <i class="fas fa-user"></i> Profile
                                </a>
                                <a href="${pageContext.request.contextPath}/bookings" class="dropdown-item">
                                    <i class="fas fa-list"></i> My Bookings
                                </a>
                                <a href="${pageContext.request.contextPath}/logout" class="dropdown-item">
                                    <i class="fas fa-sign-out-alt"></i> Logout
                                </a>
                            </div>
                        </div>
                    </c:otherwise>
                </c:choose>
            </div>
        </div>
    </div>
</nav>

<script src="${pageContext.request.contextPath}/script.js"></script>
