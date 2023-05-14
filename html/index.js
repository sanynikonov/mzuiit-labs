function getRandomInt(max) {
  return Math.floor(Math.random() * max);
}

window.onClickButton = () => {
  const title = document.getElementById("title");
  title.style.color = `rgb(${getRandomInt(255)}, ${getRandomInt(255)}, ${getRandomInt(255)})`;

  const main = document.getElementsByTagName("main")[0];
  main.style.backgroundColor = `rgb(${getRandomInt(255)}, ${getRandomInt(255)}, ${getRandomInt(255)})`;
}