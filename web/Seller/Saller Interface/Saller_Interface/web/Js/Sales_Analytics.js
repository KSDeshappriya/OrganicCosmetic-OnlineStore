var salesData2 = {
    labels: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun'],
    datasets: [{
        label: 'Sales Trend',
        data: [100, 120, 90, 150, 80, 110],
        backgroundColor: 'rgba(54, 162, 235, 0.2)',
        borderColor: 'rgba(54, 162, 235, 1)',
        borderWidth: 1
    }]
};

var ctxc = document.getElementById('salesChartt').getContext('2d');
var salesChartt = new Chart(ctxc, {
    type: 'line',
    data: salesData2,
    options: {
        scales: {
            y: {
                beginAtZero: true
            }
        }
    }
});



