window.onload = function() {

	const downbutton = document.getElementById('down');
	const upbutton = document.getElementById('up');
	const text = document.getElementById('textbox');

	//ボタンが押されたらカウント減
	downbutton.addEventListener('click', (event) => {
		//0以下にはならないようにする
		if (text.value >= 1) {
			text.value--;
		}
	});
	
	
		//ボタンが押されたらカウント増
	upbutton.addEventListener('click', (event) => {
		text.value++;
	})

	
	

}