Shoes.app(:width =>1000, :height =>1000){
  background "#f2d480".."#d8b72a"
  fill rgb(0,103,98, 0.9)
  stroke rgb(0,103,98)

  @gravity=0.5
  @velocity=0.0
  @radius=30
  @ball=oval(top:100, 
             left:250, 
             radius:@radius)
  @star=star(points:10, left:500, top:100)
  @rect=rect(70,70,70,70)

  @button1=button("Make circle to drop") {
		animate(50) do
		  @velocity+=@gravity
		  @ball.top+=@velocity 
		  if  @ball.top> height-@radius*2
			@ball.top=height-@radius*2
			@velocity=@velocity*-0.8
		  end
		end
	}
	@button2=button("Drag a star"){
		 motion do |left, top|
      @star.move left, top
    end
	}
	@button3=button("Let the rect to fly"){
		animate do |i|
			@rect.top+=(0..100).rand
		end
	}
  @button1.style(left:200)
  @button2.style(left:450)
  @button3.style(left:700)
  @rect.style(left:750, top:100)
}