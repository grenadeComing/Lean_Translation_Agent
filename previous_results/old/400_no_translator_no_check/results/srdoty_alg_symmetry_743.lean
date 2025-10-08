import Mathlib

/-- 2×2 rotation matrix by angle θ. -/
noncomputable def rot (θ : ℝ) : Matrix (Fin 2) (Fin 2) ℝ :=
  fun i j =>
    match i, j with
    | 0, 0 => Real.cos θ
    | 0, 1 => -Real.sin θ
    | 1, 0 => Real.sin θ
    | 1, 1 => Real.cos θ

/-- Reflection across the horizontal (x) axis. -/
def refl_x : Matrix (Fin 2) (Fin 2) ℝ :=
  fun i j =>
    match i, j with
    | 0, 0 => 1
    | 0, 1 => 0
    | 1, 0 => 0
    | 1, 1 => -1

/-- Let D_n be the dihedral group of the regular n-gon (n ≥ 3). Let r be the rotation by 2π/n and
    let h be the reflection across the horizontal axis. Algebraically (as matrices) we have r h r = h.
    Proof omitted (calculation by multiplying the 2×2 matrices). -/
theorem srdoty_alg_symmetry_743 (n : ℕ) (hn : 3 ≤ n) :
  rot (2 * Real.pi / n) * refl_x * rot (2 * Real.pi / n) = refl_x := by sorry
