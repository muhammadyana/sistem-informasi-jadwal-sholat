$(document).ready(function(){
    var data1 = [
        [gd(2016, 1, 2), 1800], [gd(2016, 1, 3), 1790], [gd(2016, 1, 4), 1810],
        [gd(2016, 1, 7), 1750], [gd(2016, 1, 8), 1805], [gd(2016, 1, 9), 1800],
        [gd(2016, 1, 10), 1794], [gd(2016, 1, 11), 1794], [gd(2016, 1, 14), 1807],
        [gd(2016, 1, 15), 1788], [gd(2016, 1, 16), 1799], [gd(2016, 1, 17), 1804],
        [gd(2016, 1, 18), 1811], [gd(2016, 1, 21), 1801], [gd(2016, 1, 22), 1805],
        [gd(2016, 1, 23), 1770], [gd(2016, 1, 24), 1799], [gd(2016, 1, 25), 1804],
        [gd(2016, 1, 28), 1810], [gd(2016, 1, 29), 1788], [gd(2016, 1, 30), 1804],
        [gd(2016, 1, 31), 1775]
    ];

    var data2 = [
        [gd(2016, 1, 2), 1674], [gd(2016, 1, 3), 1680], [gd(2016, 1, 4), 1643],
        [gd(2016, 1, 7), 1652], [gd(2016, 1, 8), 1640], [gd(2016, 1, 9), 1652],
        [gd(2016, 1, 10), 1652], [gd(2016, 1, 11), 1664], [gd(2016, 1, 14), 1660],
        [gd(2016, 1, 15), 1664], [gd(2016, 1, 16), 1673], [gd(2016, 1, 17), 1671],
        [gd(2016, 1, 18), 1682], [gd(2016, 1, 21), 1680], [gd(2016, 1, 22), 1685],
        [gd(2016, 1, 23), 1684], [gd(2016, 1, 24), 1670], [gd(2016, 1, 25), 1664],
        [gd(2016, 1, 28), 1652], [gd(2016, 1, 29), 1655], [gd(2016, 1, 30), 1659],
        [gd(2016, 1, 31), 1668]
    ];

    var dataset = [
        {
            label: "Students",
            data: data1,
            color: "#26A69A",
            points: {
                fillColor: "#26A69A",
                show: true,
                radius: 0
            },
            lines: {
                show: true,
                lineWidth: 2
            }
        },
        {
            label: "Teachers",
            data: data2,
            xaxis:2,
            color: "#FFC107",
            points: {
                fillColor: "#FFC107",
                show: true,
                radius: 0
            },
            lines: {
                show: true,
                lineWidth: 2
            }
        }
    ];

    var dayOfWeek = ["Sun", "Mon", "Tue", "Wed", "Thr", "Fri", "Sat"];

    var options = {
        series: {
            shadowSize: 0,
            curvedLines: { //This is a third party plugin to make curved lines
                apply: true,
                active: true,
                monotonicFit: true
            }
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

    if ($('#attendance')[0]) {
        $.plot($("#attendance"), dataset, options);
    }
});