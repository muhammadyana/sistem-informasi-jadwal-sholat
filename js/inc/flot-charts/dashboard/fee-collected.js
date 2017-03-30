$(document).ready(function(){
    var feeData = [
        {data: 5, color: '#03A9F4', label: 'Collected'},
        {data: 2, color: '#F44336', label: 'Not Collected'},
        {data: 1, color: '#8BC34A', label: 'Pending'}
    ];


    /*---------------------------------
     Pie Chart
     ---------------------------------*/
    if($('#fee-collected')[0]){
        $.plot('#fee-collected', feeData, {
            series: {
                pie: {
                    show: true,
                    stroke: {
                        width: 2
                    }
                }
            },
            legend: {
                container: '.flc-pie',
                backgroundOpacity: 0.5,
                noColumns: 0,
                backgroundColor: "white",
                lineWidth: 0
            },
            grid: {
                hoverable: true,
                clickable: true
            },
            tooltip: false,
            tooltipOpts: {
                content: "%p.0%, %s", // show percentages, rounding to 2 decimal places
                defaultTheme: false,
                cssClass: 'flot-tooltip'
            }

        });
    }
});