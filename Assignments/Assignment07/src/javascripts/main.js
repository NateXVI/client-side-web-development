// Required by Webpack - do not touch
require.context('../fonts/', true, /\.(eot|ttf|woff|woff2)$/i);
require.context('../images/', true, /\.(png|jpg|jpeg|gif|svg)$/i);
require.context('../stylesheets/', true, /\.(css|scss)$/i);

//TODO - Your ES6 JavaScript code (if any) goes here
import 'bootstrap';

const canvas = document.getElementById('canvas');
const c = canvas.getContext('2d');

// document elements
const backgroundColorInput = document.getElementById('backgroundColor');
const penColorInput = document.getElementById('penColor');
const penSizeInput = document.getElementById('penSize');
const bgColor = () => backgroundColorInput.value;
const penColor = () => penColorInput.value;
const penSize = () => penSizeInput.value;
backgroundColorInput.addEventListener('input', drawBackground);

const mouse = { x: 0, y: 0, pressed: false };
document.onmousemove = (e) => {
	mouse.x = e.clientX - canvas.offsetLeft;
	mouse.y = e.clientY - canvas.offsetTop;
	console.log(mouse);
};
document.onmousedown = (e) => (mouse.pressed = true);
document.onmouseup = (e) => (mouse.pressed = false);

function drawBackground() {
	c.fillStyle = bgColor();
	c.fillRect(0, 0, canvas.width, canvas.height);
}

function drawDot(x, y) {
	c.fillStyle = penColor();
	c.fillRect(x, y, penSize(), penSize());
}

document.onmousedown = (e) => drawDot(mouse.x - penSize() / 2, mouse.y - penSize() / 2);
document.on = (e) => drawDot(mouse.x, mouse.y);
drawBackground();
