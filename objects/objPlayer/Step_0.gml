MovimentoPlayer();


//Script utilizado para criar a colisão com a cabeça do inimigo;
if(place_meeting(x, y , objInimigoTeste)){
	var inimigo = instance_place(x, y , objInimigoTeste)
	if(y < objInimigoTeste.y - 16){
		velocidadeVertical = - velocidade;
		instance_destroy(inimigo);
	}else{
		show_debug_message("Levei dano");
	}
}