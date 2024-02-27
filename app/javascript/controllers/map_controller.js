import { Controller } from "@hotwired/stimulus"
import mapboxgl from 'mapbox-gl'
// import MapboxGeocoder from "@mapbox/mapbox-gl-geocoder"

// Connects to data-controller="map"
export default class extends Controller {
  static values = { apiKey: String, markers: Array }

  connect() {
    console.log("bjhbdj")
    mapboxgl.accessToken = this.apiKeyValue;

    this.element.innerHTML = '';

    this.map = new mapboxgl.Map({
    container: this.element,
      style: 'mapbox://styles/mapbox/streets-v10'
    });

    this.#addMarkersToMap();
    this.#fitMapToMarkers();
    // this.#initializeSearch();

    // this.map.addControl(
    //   new MapboxGeocoder({
    //     accessToken: mapboxgl.accessToken,
    //     mapboxgl: mapboxgl
    //   })
    // )
  }


  #addMarkersToMap() {
    if (this.markersValue.length > 0) {
    const marker = this.markersValue[0];
    new mapboxgl.Marker()
      .setLngLat([marker.lng, marker.lat])
      .addTo(this.map);
    }
  }


  #fitMapToMarkers() {
    const bounds = new mapboxgl.LngLatBounds();
    const marker = this.markersValue[0];
    bounds.extend([marker.lng, marker.lat])
    this.map.fitBounds(bounds, { padding: 50 });
  }

  toggleMap() {
    const mapContainer = this.element;
    mapContainer.style.display = mapContainer.style.display === 'none' ? 'block' : 'none';
  }
}

//   #initializeSearch() {
//     const geocoder = new MapboxGeocoder({
//       accessToken: mapboxgl.accessToken,
//       mapboxgl: mapboxgl,
//       marker: false,
//     });

//     document.getElementById('map-search').appendChild(geocoder.onAdd(this.map));
//   }
