$(document).ready(function(){
    var data1 = [
        [gd(2013, 1, 2), 1690.25], [gd(2013, 1, 3), 1696.3], [gd(2013, 1, 4), 1659.65],
        [gd(2013, 1, 7), 1668.15], [gd(2013, 1, 8), 1656.1], [gd(2013, 1, 9), 1668.65],
        [gd(2013, 1, 10), 1668.15], [gd(2013, 1, 11), 1680.2], [gd(2013, 1, 14), 1676.7],
        [gd(2013, 1, 15), 1680.7], [gd(2013, 1, 16), 1689.75], [gd(2013, 1, 17), 1687.25],
        [gd(2013, 1, 18), 1698.3], [gd(2013, 1, 21), 1696.8], [gd(2013, 1, 22), 1701.3],
        [gd(2013, 1, 23), 1700.8], [gd(2013, 1, 24), 1686.75], [gd(2013, 1, 25), 1680],
        [gd(2013, 1, 28), 1668.65], [gd(2013, 1, 29), 1671.2], [gd(2013, 1, 30), 1675.7],
        [gd(2013, 1, 31), 1684.25]
    ];

    var data2 = [
        [gd(2013, 1, 2), 1674.15], [gd(2013, 1, 3), 1680.15], [gd(2013, 1, 4), 1643.8],
        [gd(2013, 1, 7), 1652.25], [gd(2013, 1, 8), 1640.3], [gd(2013, 1, 9), 1652.75],
        [gd(2013, 1, 10), 1652.25], [gd(2013, 1, 11), 1664.2], [gd(2013, 1, 14), 1660.7],
        [gd(2013, 1, 15), 1664.7], [gd(2013, 1, 16), 1673.65], [gd(2013, 1, 17), 1671.15],
        [gd(2013, 1, 18), 1682.1], [gd(2013, 1, 21), 1680.65], [gd(2013, 1, 22), 1685.1],
        [gd(2013, 1, 23), 1684.6], [gd(2013, 1, 24), 1670.65], [gd(2013, 1, 25), 1664],
        [gd(2013, 1, 28), 1652.75], [gd(2013, 1, 29), 1655.25], [gd(2013, 1, 30), 1659.7],
        [gd(2013, 1, 31), 1668.2]
    ];

    var dataset = [
        {
            label: "Visits",
            data: data1,
            color: "#ff766c",
            points: {
                fillColor: "#ff766c",
                show: true,
                radius: 2
            },
            lines: {
                show: true,
                lineWidth: 1
            }
        },
        {
            label: "Unique Visitors",
            data: data2,
            xaxis:2,
            color: "#03A9F4",
            points: {
                fillColor: "#03A9F4",
                show: true,
                radius: 2
            },
            lines: {
                show: true,
                lineWidth: 1
            }
        }
    ];

    var dayOfWeek = ["Sun", "Mon", "Tue", "Wed", "Thr", "Fri", "Sat"];

    var options = {
        series: {
            shadowSize: 0
        },
        grid : {
            borderWidth: 1,
            borderColor: '#f3f3f3',
            show : true,
            clickable : true,
            hoverable: true,
            mouseActiveRadius: 20,
            labelMargin: 10
        },

        xaxes: [
            {
                color: '#f3f3f3',
                mode: "time",
                tickFormatter: function (val, axis) {
                    return dayOfWeek[new Date(val).getDay()];
                },
                position: "top",
                font :{
                    lineHeight: 13,
                    style: "normal",
                    color: "#9f9f9f"
                }
            },
            {
                color: '#f3f3f3',
                mode: "time",
                timeformat: "%m/%d",
                font :{
                    lineHeight: 13,
                    style: "normal",
                    color: "#9f9f9f"
                }
            }
        ],
        yaxis: {
            ticks: 2,
            color: "#f3f3f3",
            tickDecimals: 0,
            font :{
                lineHeight: 13,
                style: "normal",
                color: "#9f9f9f"
            },


        },
        legend: {
            container: '.flc-visits',
            backgroundOpacity: 0.5,
            noColumns: 0,
            font :{
                lineHeight: 13,
                style: "normal",
                color: "#9f9f9f"
            },
        }
    };

    function gd(year, month, day) {
        return new Date(year, month - 1, day).getTime();
    }

    if ($('#visit-over-time')[0]) {
        $.plot($("#visit-over-time"), dataset, options);
    }
});