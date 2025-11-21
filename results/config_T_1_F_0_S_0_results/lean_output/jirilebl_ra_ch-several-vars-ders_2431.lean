import Mathlib

/-- Let `‖·‖` be any norm on `ℝ^n`. The induced operator norm on `L(ℝ^n, ℝ^m)` equals the maximum (supremum)
over the unit sphere, and the supremum over the closed and open unit balls.

Concretely:
  ‖A‖ = Sup (image (fun x => ‖A x‖) {x | ‖x‖ = 1})
       = Sup (image (fun x => ‖A x‖) {x | ‖x‖ ≤ 1})
       = Sup (image (fun x => ‖A x‖) {x | ‖x‖ < 1})

(The proof uses that the unit sphere is compact in finite dimensions.) -/
theorem operator_norm_eq_sups {m n : ℕ} (A : (Fin n → ℝ) →L[ℝ] (Fin m → ℝ)) :
  ‖A‖ = Sup (Set.image (fun x : Fin n → ℝ => ‖A x‖) {x | ‖x‖ = 1})
    = Sup (Set.image (fun x : Fin n → ℝ => ‖A x‖) {x | ‖x‖ ≤ 1})
    = Sup (Set.image (fun x : Fin n → ℝ => ‖A x‖) {x | ‖x‖ < 1}) := by sorry