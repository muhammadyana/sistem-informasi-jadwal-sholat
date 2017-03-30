$(document).ready(function(){

    var data1 = [[2010,60], [2011,50], [2012,80], [2013,30], [2014,70], [2015,40], [2016,55]];

    var dataset = [
        {
            label: "Index Value",
            data: data1,
            color: "#00BCD4",
            points: {
                fillColor: "#00BCD4",
                show: true,
                radius: 0
            },
            lines: {
                show: true,
                lineWidth: 1,
                fill: 1,
                fillColor: {
                    colors: ["rgba(255,255,255,0.0)","#00BCD4"]
                }
            }
        }
    ];

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
            borderColor: '#eee',
            show : true,
            hoverable : true,
            clickable : true
        },

        yaxis: {
            tickColor: '#eee',
            tickDecimals: 0,
            font :{
                lineHeight: 13,
                style: "normal",
                color: "#9f9f9f",
            },
            shadowSize: 0
        },

        xaxis: {
            tickColor: '#fff',
            tickDecimals: 0,
            font :{
                lineHeight: 13,
                style: "normal",
                color: "#9f9f9f"
            },
            shadowSize: 0,
        },

        legend:{
            container: '.flc-sei',
            backgroundOpacity: 0.5,
            noColumns: 0,
            backgroundColor: "white",
            lineWidth: 0
        }
    }

    if ($('#effective-index')[0]) {
        $.plot($("#effective-index"), dataset, options);
    }
});