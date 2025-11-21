import Mathlib

noncomputable section

variable {n : ℕ}

open Real

/-- The map f : closed unit ball in ℝ^n → S^n ⊂ ℝ × ℝ^n, written as a map
    EuclideanSpace ℝ (Fin n) → ℝ × EuclideanSpace ℝ (Fin n). For x ≠ 0,
    f x = (cos (π ‖x‖), sin (π ‖x‖) • (x / ‖x‖)), and f 0 = (1, 0). -/
noncomputable def f (x : EuclideanSpace ℝ (Fin n)) : ℝ × EuclideanSpace ℝ (Fin n) :=
  let r := ‖x‖;
  if r = 0 then (1, 0) else (Real.cos (Real.pi * r), Real.sin (Real.pi * r) • (r⁻¹ • x))

/-- f is injective on the open unit ball {x | ‖x‖ < 1}. -/
theorem f_injective_on_open_unit_ball :
  ∀ x y : EuclideanSpace ℝ (Fin n), ‖x‖ < 1 → ‖y‖ < 1 → f x = f y → x = y := by sorry

/-- For every x on the unit sphere (‖x‖ = 1), f x = (-1, 0). -/
theorem f_maps_boundary_to_neg_one_zero (x : EuclideanSpace ℝ (Fin n)) (hx : ‖x‖ = 1) :
  f x = (-1, 0) := by sorry

end noncomputable section
