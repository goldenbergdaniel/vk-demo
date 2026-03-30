package scratch

import "core:fmt"

π :: 3.141529

main :: proc()
{
  R := 160.0
  C := 100.0e-9

  f_c := 1.0 / (2.0 * π * R * C)
  fmt.println(opamp(0, 12, -5, 5))
}

opamp :: proc(inv, ninv, vn, vp: f32) -> (out: f32)
{
  return clamp(ninv - inv, vn, vp)
}
