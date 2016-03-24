
Shoes.app(:width =>700, :height =>500) {
	background "#6b544c".."#cbbc9b"
	@img=image"http://vignette2.wikia.nocookie.net/mlp/images/6/65/FANMADE_The_heart-shaped_Fire_Ruby.png"
	@title=title strong("Do you love Ruby?")
	@button1=button("Yes!") { 
		alert("Good for you.") 
	}
	@button2=button("No!"){
		alert("You've chosen a bad side, bro!")
	}
	
	
	@img.style(width:100)
	@title.style(top: 100, left: 150, stroke:"#cb213d")
	@button1.style(top:170, left:270)
	@button2.style(top:170, left:340)
	
	
	animate do |i|
		@img.left+=(0..20).rand
	end 
}