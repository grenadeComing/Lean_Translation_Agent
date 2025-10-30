import Mathlib

/-- If M is the 2x2 matrix representing a complex number a + i b, then M has eigenvalues a ± i b with eigenvectors [1; ∓ i]. -/
theorem hasEigenvalues_complex_2x2 (a b : ℂ) :
  ∃ v1 v2 : Fin 2 → ℂ, ∃ l1 l2 : ℂ,
    let M := ![![a, -b], ![b, a]] in
      M.mulVec v1 = l1 • v1 ∧ M.mulVec v2 = l2 • v2 ∧ l1 = a + b * Complex.I ∧ l2 = a - b * Complex.I := by
  sorry
