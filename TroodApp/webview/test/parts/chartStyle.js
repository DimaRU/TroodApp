/**
 * Dark blue theme for Highcharts JS
 * @author Torstein Hønsi
 */

Highcharts.theme = {
	colors: ['#2b908f', '#90ee7e', '#f45b5b', '#7798BF', '#aaeeee', '#ff0066', '#eeaaee',
		'#55BF3B', '#DF5353', '#7798BF', '#aaeeee'],
	chart: {
		backgroundColor: {
			linearGradient: { x1: 0, y1: 0, x2: 1, y2: 1 },
			stops: [
				[0, '#2c3e50']
			]
		},
		style: {
			fontFamily: '\'Segoe UI\', sans-serif'
		},
		plotBorderColor: '#2c3e50'
	},
	title: {
		style: {
			color: '#fff',
			fontSize: '14px',
			opacity: 0.2
		},
		align: 'left',
		y: 3
	},
	subtitle: {
		style: {
			color: '#fff',
			textTransform: 'uppercase',
			fontSize: '24px'
		},
		align: 'left',
		y: 30
	},
	xAxis: {
		gridLineColor: '#2c3e50',
		labels: {
			style: {
				color: '#2c3e50'
			}
		},
		lineColor: '#2c3e50',
		minorGridLineColor: '#2c3e50',
		tickColor: '#2c3e50',
		title: {
			style: {
				color: '#2c3e50'

			}
		}
	},
	yAxis: {
		gridLineColor: '#2c3e50',
		labels: {
			style: {
				color: '#2c3e50'
			}
		},
		lineColor: 'r#2c3e50',
		minorGridLineColor: '#2c3e50',
		tickColor: '#2c3e50',
		tickWidth: 0,
		title: {
			style: {
				color: '#2c3e50'
			}
		}
	},
	tooltip: {
		backgroundColor: 'rgba(0, 182, 72, 0.3)',
		style: {
			color: '#fff'
		},
		enabled: false
	},
	plotOptions: {
		series: {
			marker: {
				lineColor: '#fff'
			}
		},
		boxplot: {
			fillColor: '#fff'
		},
		candlestick: {
			lineColor: 'white'
		},
		errorbar: {
			color: 'white'
		}
	},
	credits: {
		style: {
			color: '#666'
		}
	},
	labels: {
		style: {
			color: '#707073'
		}
	},

	drilldown: {
		activeAxisLabelStyle: {
			color: '#F0F0F3'
		},
		activeDataLabelStyle: {
			color: '#F0F0F3'
		}
	},

	navigation: {
		buttonOptions: {
			symbolStroke: '#DDDDDD',
			theme: {
				fill: '#505053'
			}
		}
	},

	// scroll charts
	rangeSelector: {
		buttonTheme: {
			fill: '#505053',
			stroke: '#000000',
			style: {
				color: '#CCC'
			},
			states: {
				hover: {
					fill: '#707073',
					stroke: '#000000',
					style: {
						color: 'white'
					}
				},
				select: {
					fill: '#000003',
					stroke: '#000000',
					style: {
						color: 'white'
					}
				}
			}
		},
		inputBoxBorderColor: '#fff',
		inputStyle: {
			backgroundColor: '#333',
			color: 'silver'
		},
		labelStyle: {
			color: 'silver'
		}
	},

	navigator: {
		handles: {
			backgroundColor: '#666',
			borderColor: '#AAA'
		},
		outlineColor: '#CCC',
		maskFill: 'rgba(255,255,255,0.1)',
		series: {
			color: '#7798BF',
			lineColor: '#A6C7ED'
		},
		xAxis: {
			gridLineColor: '#fff'
		}
	},

	scrollbar: {
		barBackgroundColor: '#808083',
		barBorderColor: '#808083',
		buttonArrowColor: '#CCC',
		buttonBackgroundColor: '#606063',
		buttonBorderColor: '#606063',
		rifleColor: '#FFF',
		trackBackgroundColor: '#404043',
		trackBorderColor: '#404043'
	},

	// special colors for some of the
	legendBackgroundColor: 'rgba(0, 0, 0, 0.5)',
	background2: '#505053',
	dataLabelsColor: '#B0B0B3',
	textColor: '#C0C0C0',
	contrastTextColor: '#F0F0F3',
	maskColor: 'rgba(255,255,255,0.3)'
};

// Apply the theme
var highchartsOptions = Highcharts.setOptions(Highcharts.theme);
