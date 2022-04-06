velocidade = 5;
gravidade = 0.5;
velocidadeHorizontal = 0;
velocidadeVertical = 0;

function ColisaoPlayer(){
	repeat(abs(velocidadeHorizontal)){
		colHorizontalPlayer = (!place_meeting(x + sign(velocidadeHorizontal), y, objColisor));								
		if(colHorizontalPlayer){
			x += sign(velocidadeHorizontal);		
		}else{
			velocidadeHorizontal = 0;				
			break;
		}	
	}
	
	repeat(abs(velocidadeVertical)){
		colVerticalPlayer = (!place_meeting(x, y + sign(velocidadeVertical), objColisor));								
		if(colVerticalPlayer){
			y += sign(velocidadeVertical);				
		}else{	
			velocidadeVertical = 0;
			break;
		}	
	}
}

function MovimentoPlayer(){
	direita = keyboard_check(vk_right);
	esquerda = keyboard_check(vk_left);
	pulo = keyboard_check(vk_space);
	
	velocidadeHorizontal = (direita - esquerda) * velocidade;
	if(pulo){
		velocidadeVertical -= 1;
	}
	
	if(!place_meeting(x, y + sign(velocidadeVertical), objColisor)){
		velocidadeVertical += gravidade;
	}else{
		velocidadeVertical = velocidadeVertical;
	}
	
	ColisaoPlayer();	
}