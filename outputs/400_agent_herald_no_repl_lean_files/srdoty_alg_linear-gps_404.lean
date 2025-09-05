import Mathlib

open Matrix

/-- Let D(n) be the set of diagonal invertible n×n matrices over a field 𝕜 (viewed as units).
    This theorem asserts that there exists a subgroup of the units of `Matrix (Fin n) (Fin n) 𝕜`
    whose carrier is exactly the set of invertible diagonal matrices. -/
theorem diagonal_matrices_form_subgroup (𝕜 : Type _) [Field 𝕜] (n : ℕ) :
  ∃ (H : Subgroup ((Matrix (Fin n) (Fin n) 𝕜)ˣ)),
    H.carrier = { u | ∀ i j, i ≠ j → (u : Matrix (Fin n) (Fin n) 𝕜) i j = 0 } := by
  sorry
