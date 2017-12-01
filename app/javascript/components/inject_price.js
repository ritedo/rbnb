function injectPrice(startTime, endTime, price) {
  let days = (endTime - startTime) / 1000 / 60 / 60 / 24;
  document.getElementById('submit_booking').value = `Book now (${days * price}€)`;
}

export { injectPrice };
