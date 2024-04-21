document.addEventListener('DOMContentLoaded', function () {
    const typer = document.getElementById('typer');
    const texts = [
        "Exploring the Rich Tapestry of Global Gastronomy...",
        "Discovering Authentic Flavors from Around the World..."
    ];
    let currentTextIndex = 0;

    function changeText() {
        typer.style.animation = 'none';
        void typer.offsetWidth;
        typer.style.animation = null;

        setTimeout(() => {
            typer.textContent = texts[currentTextIndex];
            currentTextIndex = (currentTextIndex + 1) % texts.length;
        }, 80);
    }

    setInterval(changeText, 5000);
});


var totalSalesData = {
    labels: ['January', 'February', 'March', 'April', 'May', 'June'],
    datasets: [{
        label: 'Total Sales ($)',
        data: [5000, 7000, 6000, 8000, 9000, 10000],
        backgroundColor: 'rgba(54, 162, 235, 0.2)',
        borderColor: 'rgba(54, 162, 235, 1)',
        borderWidth: 1
    }]
};

var monthlySalesData = {
    labels: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun'],
    datasets: [{
        label: 'Monthly Sales ($)',
        data: [1000, 1200, 900, 1500, 800, 1100],
        backgroundColor: 'rgba(255, 99, 132, 0.2)',
        borderColor: 'rgba(255, 99, 132, 1)',
        borderWidth: 1
    }]
};

var totalOrdersData = {
    labels: ['Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday'],
    datasets: [{
        label: 'Total Orders',
        data: [20, 30, 25, 35, 40, 45, 50],
        backgroundColor: 'rgba(75, 192, 192, 0.2)',
        borderColor: 'rgba(75, 192, 192, 1)',
        borderWidth: 1
    }]
};

var pendingOrdersData = {
    labels: ['Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday'],
    datasets: [{
        label: 'Pending Orders',
        data: [5, 10, 8, 12, 15, 18, 20],
        backgroundColor: 'rgba(255, 206, 86, 0.2)',
        borderColor: 'rgba(255, 206, 86, 1)',
        borderWidth: 1
    }]
};


var totalSalesChart = new Chart(document.getElementById('totalSalesChart'), {
    type: 'bar',
    data: totalSalesData,
    options: {
        scales: {
            yAxes: [{
                ticks: {
                    beginAtZero: true
                }
            }]
        },
        maintainAspectRatio: false,
        responsive: true,
    }
});

var monthlySalesChart = new Chart(document.getElementById('monthlySalesChart'), {
    type: 'line',
    data: monthlySalesData,
    options: {
        scales: {
            yAxes: [{
                ticks: {
                    beginAtZero: true
                }
            }]
        },
        maintainAspectRatio: false,
        responsive: true,
    }
});

var totalOrdersChart = new Chart(document.getElementById('totalOrdersChart'), {
    type: 'bar',
    data: totalOrdersData,
    options: {
        scales: {
            yAxes: [{
                ticks: {
                    beginAtZero: true
                }
            }]
        },
        maintainAspectRatio: false,
        responsive: true,
    }
});

var pendingOrdersChart = new Chart(document.getElementById('pendingOrdersChart'), {
    type: 'line',
    data: pendingOrdersData,
    options: {
        scales: {
            yAxes: [{
                ticks: {
                    beginAtZero: true
                }
            }]
        },
        maintainAspectRatio: false,
        responsive: true,
    }
});


//--------------------------------------------------------------------------- account settings -----------------------------------

$(document).ready(function() {
    $('#accountForm').animate({ opacity: 1 }, 500);
});

//--------------------------------------------------------------------------- oder mng ---------------------------------------------

$(document).ready(function () {
    $('.order-table').css('opacity', '1'); 
    $('.btn-update').change(function () {
        var newStatus = $(this).val();
       
        console.log('Order status updated to: ' + newStatus);
    });
});

//------------------------------------------------------------- sales analytics --------------------------------------------


