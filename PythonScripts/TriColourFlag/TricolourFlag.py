import turtle
tt=turtle.Turtle()
wn = turtle.Screen()
wn.title('TriColour Flag')
tt.penup()
tt.goto(-100,-100)
tt.pendown()

tt.pencolor("Green")
tt.fillcolor("Green")
tt.begin_fill()

for i in range(2):
  tt.forward(50)
  tt.left(90)
  tt.forward(100)
  tt.left(90)

tt.end_fill()

tt.forward(50)

tt.pencolor("white")
tt.fillcolor("white")
tt.begin_fill()

for i in range(2):
  tt.forward(50)
  tt.left(90)
  tt.forward(100)
  tt.left(90)

tt.end_fill()

tt.forward(50)

tt.pencolor("orange")
tt.fillcolor("orange")
tt.begin_fill()

for i in range(2):
  tt.forward(50)
  tt.left(90)
  tt.forward(100)
  tt.left(90)

tt.end_fill()
tt.goto(0,0)
for i in range(0,50,100):
    tt.pencolor(i,i,i)
    tt.write("Ireland", align="center", font=("Arial", 25, "normal"))
    tt.hideturtle()

wn.exitonclick()
