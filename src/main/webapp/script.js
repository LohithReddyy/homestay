// Toggle Navbar for mobile view
function toggleNav() {
    const navContent = document.getElementById('navContent');
    navContent.classList.toggle('active');
}

// Toggle Dropdown menu
function toggleDropdown(dropdown) {
    const menu = dropdown.querySelector('.dropdown-menu');
    menu.classList.toggle('show');
}

// Close the dropdown when clicking outside
document.addEventListener('click', function (e) {
    if (!e.target.closest('.dropdown')) {
        const dropdowns = document.querySelectorAll('.dropdown-menu');
        dropdowns.forEach(function (dropdown) {
            dropdown.classList.remove('show');
        });
    }
});
