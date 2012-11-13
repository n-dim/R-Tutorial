# Grafiken erleichtern die Erfassung von Daten
# je nachdem, wie die Art der Darstellung gewählt ist, können bestimmte Aspekte 
# einer Grafik leichter erfasst werden

# welche Messreihe hat den höchsten Wert bei t=25?

N <- 40 # Anzahl der Messwerte

# Erzeugung von "Messwerten" aus Sinuskurve und Zufallswerten
  SinusKurve <- sin(seq(0.5*pi, 1.5*pi, length.out=N))+1
  
  A <- SinusKurve*9 + 1 + runif(N,-1,1) 
  B <- SinusKurve*8 + 2 + runif(N,-1,1)
  C <- SinusKurve*4 + 7 + runif(N,-1,1)

# leeren Plot erzeugen
  plot(A, xlim=c(0,N), ylim=c(0,max(A,B,C)) ,type="l", xlab="t", ylab="Messwert", axes=T, frame.plot=T, )

# Plot formatieren  
  # Unterteilung für Achsen und Gitternetzlinien
  LinienVertikal <-   pretty(0:N,n=10)
  LinienHorizontal <- pretty(c(min(A), max(A)),sep=1)
  # Achsen einzeichnen
  axis(at=LinienVertikal, side=1, )
  axis(side=2, at=LinienHorizontal)
  # Gitternetz einzeichnen
  abline(v=LinienVertikal, lty=3)
  abline(h=LinienHorizontal, lty=3)

# Messreihen einzeichnen
  lines(A, col="blue")
  lines(B, col="red")
  lines(C, col="green")

ABC <- data.frame(A=A, B=B, C=C)

my.ts.panel <- function(x, col = col, bg = bg, pch = pch, type = type, ...){
  lines(x, col = col, bg = bg, pch = pch, type = type, xlim=c(0,20), ...)
  grid()
  }

plot.ts(ABC, main="", plot.type="m", panel=my.ts.panel)
plot.ts(ABC, main="", plot.type="s", lty=c(1,2,3))
grid()
legend("bottomleft", legend=c("A","B","C"), lty=c(1,2,3))

layout(matrix(c(1,2,3), ncol=1) )

parold <- par()
par(oma=c(0, 0, 0, 0),mar=c(3,3,0.2,0.2), mgp=c(1.6,.7,0))

plot(A, type="l", col="blue")
plot(B, type="l", col="red")
plot(C, type="l", col="green")

layout(1)
par(parold)
