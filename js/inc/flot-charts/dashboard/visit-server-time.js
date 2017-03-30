$(document).ready(function(){
    var data = [[1,60], [2,30], [3,50], [4,100], [5,10], [6,90], [7,85], [8, 10], [9, 25],[10, 65],[11, 69],[12, 104],[13, 94],[14, 32],[15, 10],[16, 45],[17, 34],[18, 22],[19, 100],[20, 43],[21, 98],[22, 60],[23, 51],[24,30],];

    var dataset = [{
        data : data,
        label: 'Visits',
        bars : {
            show : true,
            barWidth : 0.4,
            order : 1,
            lineWidth: 0,
            fillColor: '#ff766c'
        }
    }];

    var options = {
        grid : {
            borderWidth: 1,
            borderColor: '#f3f3f3',
            show : true,
            hoverable : true,
            clickable : true,
            labelMargin: 10
        },

        yaxis: {
            tickColor: '#f3f3f3',
            tickDecimals: 0,
            font :{
                lineHeight: 13,
                style: "normal",
                color: "#9f9f9f",
            },
            shadowSize: 0
        },

        xaxis: {
            tickFormatter: function (value, axis) {
                return value+'h'
            },
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
            show: false
        }
    }

    if ($('#visit-server-time')[0]) {
        $.plot($("#visit-server-time"), dataset, options);
    }

});