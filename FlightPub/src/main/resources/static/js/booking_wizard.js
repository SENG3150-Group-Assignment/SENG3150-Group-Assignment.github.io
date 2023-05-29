var currentPage = 1;
var totalPages = 4;

function changePage(page) {
    if (page >= 1 && page <= totalPages) {
        document.getElementById("page" + currentPage).style.display = "none";
        document.getElementById("page" + page).style.display = "block";
        currentPage = page;
    }
}

function previousPage() {
    if (currentPage > 1) {
        changePage(currentPage - 1);
    }
}

function nextPage() {
    if (currentPage < totalPages) {
        changePage(currentPage + 1);
    }
}