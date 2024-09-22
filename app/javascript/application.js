import { Chart } from 'chart.js';
import Chartkick from 'chartkick';
import { Adapter } from 'chartjs-adapter-date-fns';
import Rails from "@rails/ujs";
import "chartkick/chart.js";
// app/javascript/packs/application.js
import 'bootstrap'
import '../stylesheets/application' // Ensure you are loading your custom styles

Rails.start();

// Register the date adapter
Chart.register(Adapter);

// Ensure Chartkick uses Chart.js
Chartkick.use(Chart);


