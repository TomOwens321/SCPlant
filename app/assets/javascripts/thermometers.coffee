$ ->

  $('#gaugeContainer').jqxGauge({
      ranges: [{ startValue: 0, endValue: 55, style: { fill: '#C9C9C9', stroke: '#C9C9C9' }, endWidth: 5, startWidth: 1 },
                  { startValue: 55, endValue: 110, style: { fill: '#FCF06A', stroke: '#FCF06A' }, endWidth: 10, startWidth: 5 },
                  { startValue: 110, endValue: 165, style: { fill: '#FCA76A', stroke: '#FCA76A' }, endWidth: 15, startWidth: 10 },
                  { startValue: 165, endValue: 220, style: { fill: '#FC6A6A', stroke: '#FC6A6A' }, endWidth: 20, startWidth: 15}],
      ticksMinor: { interval: 5, size: '5%' },
      ticksMajor: { interval: 10, size: '9%' },
      value: 0,
      colorScheme: 'scheme03',
      animationDuration: 1200
  });

  $('#gaugeContainer').jqxGauge({
    value: $('#reading').val()
  });
