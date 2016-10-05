/**
 *
 * Active Charts using Highcharts demonstration
 *
 * Licensed under the MIT license.
 * http://www.opensource.org/licenses/mit-license.php
 * 
 * Copyright 2012, Script Tutorials
 * http://www.script-tutorials.com/
 */

// Change Chart type function
function ChangeChartType(chart, series, newType) {
    newType = newType.toLowerCase();
    for (var i = 0; i < series.length; i++) {
        var srs = series[0];
        try {
            srs.chart.addSeries({
                type: newType,
                stack: srs.stack,
                yaxis: srs.yaxis,
                name: srs.name,
                color: srs.color,
                data: srs.options.data
            },
            false);
            series[0].remove();
        } catch (e) {
        }
    }
}

// Two charts definition
var chart1, chart2;

// Once DOM (document) is finished loading
$(document).ready(function() {

    // First chart initialization
    chart1 = new Highcharts.Chart({
      chart: {
        title: '',
        type: 'area',
        renderTo: 'h-container',
        marginTop: 105
      },
      legend: {
        enabled: false
      },
      subtitle: {
        text: '83%'
      },
      title: {
        text: 'Оценка персонала'
      },
      xAxis: {
        categories: [
          'Янв',
          'Фев',
          'Март',
          'Апр',
          'Май',
          'Июнь',
          'Июль',
          'Авг',
          'Сен'
        ]
      },
      yAxis: {
        title: {
          text: ''
        },
        labels: {
          formatter: function () {
            return this.value + '%';
          }
        },
        max: 100,
        minorTickInterval: 50,
        minTickInterval: 50
      },
      credits: {
        enabled: false
      },
      plotOptions: {
        series: {
          fillOpacity: 0.3,
          lineColor: '#fff',
          lineWidth: 3,
          marker: {
            fillColor: '#00b648',
            lineWidth: 2,
            lineColor: null,
            radius: 6,
            lineColor: '#fff'// inherit from series
          }
        }
      },
      series: [{
        name: '',
        data: [24, 49, 43, 47, 55, 75, 50, 63, 98],
        color: 'rgba(255, 255, 255, 0.5)'
      }]
    });
});