// Function to toggle the visibility of dropdowns
function toggleDropdown(element) {
    const dropdownMenu = element.querySelector('.dropdown-menu');
    dropdownMenu.classList.toggle('show');
}

// Function to toggle the navigation bar on smaller screens
function toggleNav() {
    const navContent = document.getElementById('navContent');
    navContent.classList.toggle('active');
}
