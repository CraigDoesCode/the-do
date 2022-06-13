import { Controller } from "@hotwired/stimulus";
// import GMaps from "gmaps/gmaps.js";

// Connects to data-controller="map"
export default class extends Controller {
  // static values = {
  //   apiKey: String,
  //   markers: Array,
  // };
  // connect() {
  //   mapboxgl.accessToken =
  //     "pk.eyJ1IjoiY25vcmZvcmQyIiwiYSI6ImNsNGN4a241czAzMGkzY25hanBmZW14dDgifQ.WA3sDm_NPaIDMBdRWuJSOA";
  //   console.log(this.apiKeyValue);
  //   console.log(this.element);
  //   this.map = new mapboxgl.Map({
  //     container: this.element,
  //     style: "mapbox://styles/mapbox/streets-v10",
  //   });
  // }
}

// connect() {
//   this.show();
//   console.log("map connected");
//   const mapElement = this.mapTarget;
//   console.log(mapElement);
//   if (mapElement) {
//     console.log("working...");
//     // don't try to build a map if there's no div#map to inject in
//     // const map = new GMaps({ el: "#map", lat: 0, lng: 0 });
//     // const markers = JSON.parse(mapElement.dataset.markers);
//     // map.addMarkers(markers);
//     // if (markers.length === 0) {
//     //   map.setZoom(2);
//     // } else if (markers.length === 1) {
//     //   map.setCenter(markers[0].lat, markers[0].lng);
//     //   map.setZoom(14);
//     // } else {
//     //   map.fitLatLngBounds(markers);
//     // }
//   }
// }
// show() {
//   console.log("map connected");
//   const mapElement = this.mapTarget;
//   console.log(mapElement);
//   if (mapElement) {
//     // console.log("working...");
//     //don't try to build a map if there's no div#map to inject in
//     const map = new GMaps({ el: "#map", lat: 0, lng: 0 });
//     console.log(map);
//     const markers = JSON.parse(mapElement.dataset.markers);
//     map.addMarkers(markers);
//     if (markers.length === 0) {
//       map.setZoom(2);
//     } else if (markers.length === 1) {
//       map.setCenter(markers[0].lat, markers[0].lng);
//       map.setZoom(14);
//     } else {
//       map.fitLatLngBounds(markers);
//     }
//     console.log("end of maps");
//   }
// }
// }
