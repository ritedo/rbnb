import { injectPrice } from './inject_price';

const start = document.getElementById("reservation_starts_at");
const end = document.getElementById("reservation_ends_at");
const price = document.getElementById("calcul-days").dataset.price;

let startTime = null
let endTime = null

start.addEventListener("change", (event) => {
  startTime = Date.parse(event.currentTarget.value);
  if (endTime !== null) {
    injectPrice(startTime, endTime, price);
  }
});

end.addEventListener("change", (event) => {
  endTime = Date.parse(event.currentTarget.value);
  if (startTime !== null) {
    injectPrice(startTime, endTime, price);
  }
});


