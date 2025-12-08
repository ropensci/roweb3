lleno <- !anyNA(x)
ok <- !(x[1] == y[1])
if (ok) {
  z <- x + 1
}
if (z > 3) {
  stop('ouch')
}
