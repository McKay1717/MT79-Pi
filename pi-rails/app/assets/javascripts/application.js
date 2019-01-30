// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require jquery3
//= require popper
//= require bootstrap
//= require highcharts
//= require chartkick

function addCircle(chart) {
  if (this.circle) {
    $(this.circle.element).remove();
  }
  this.circle = chart.renderer.circle(10, 430, 430).attr({
    fill: 'rgba(120, 120, 120, 0.4)',
    stroke: 'black',
    'stroke-width': 1
  });
  this.circle.add();
}

window.setTimeout(function () {
  $chart = $('#chart-monte-carlo').highcharts()
  $chart.setSize(450, 450);
  
  addCircle($chart);
  
}, 1500);

