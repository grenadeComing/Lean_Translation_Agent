import Mathlib

open Real

theorem rotation_oangle_eq (o : Orientation ℝ (Fin 2 → ℝ) (Fin 2)) (θ : ℝ) {x : Fin 2 → ℝ} (hx : x ≠ 0) :
  o.oangle x (fun i => if i = 0 then cos θ * x 0 - sin θ * x 1 else sin θ * x 0 + cos θ * x 1) = θ := by sorry
