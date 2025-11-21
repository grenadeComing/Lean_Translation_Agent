import Mathlib

/-!
Let D_n be the dihedral group of a regular n-gon (n ≥ 3). Let r be the rotation by 2π/n
and let h be the reflection across the horizontal axis. We represent these as 2×2 real
matrices and state the equality r * h * r = h. No proof is given (end with `by sorry`).
-/

theorem dihedral_rhr_eq_h (n : ℕ) (hn : 3 ≤ n) :
  let θ : ℝ := 2 * Real.pi / (n : ℝ)
  let r : Matrix (Fin 2) (Fin 2) ℝ := fun i j =>
    if i = 0 ∧ j = 0 then Real.cos θ
    else if i = 0 ∧ j = 1 then -Real.sin θ
    else if i = 1 ∧ j = 0 then Real.sin θ
    else Real.cos θ
  let h : Matrix (Fin 2) (Fin 2) ℝ := fun i j =>
    if i = 0 ∧ j = 0 then 1
    else if i = 0 ∧ j = 1 then 0
    else if i = 1 ∧ j = 0 then 0
    else -1
  r * h * r = h := by sorry
