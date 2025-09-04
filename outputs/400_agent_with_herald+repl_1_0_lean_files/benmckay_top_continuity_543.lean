import Mathlib

variable {n : ℕ}

def E := Fin n → ℝ

noncomputable def f (x : E) : ℝ × E :=
  if h : x = 0 then (1, (0 : E))
  else
    let r := ‖x‖
    (cos (π * r), (sin (π * r) * r⁻¹) • x)

theorem f_maps_boundary_to_pole (x : E) (hx : ‖x‖ = 1) : f x = (-1, (0 : E)) := by sorry

theorem f_injective_on_open_ball {x y : E} (hx : ‖x‖ < 1) (hy : ‖y‖ < 1) (h : f x = f y) : x = y := by sorry
