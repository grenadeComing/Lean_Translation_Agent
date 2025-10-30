/-
Translation: Let R ⊆ ℝ^n be a closed rectangle and f : R → ℝ be Riemann integrable
nonnegative function. If ∫_R f = 0, then there exists E ⊆ R with outer measure zero
such that f(x) = 0 for all x ∈ R \\ E.
Note: This is a translation and not a full proof. 
-/

import Mathlib

open Set

noncomputable section

variable {n : ℕ}
variable (R : Set (Fin n → ℝ)) (f : (Fin n → ℝ) → ℝ)

theorem exists_null_set_of_nonneg_integral_zero
  (hR : IsClosed R)
  (hf_nonneg : ∀ x ∈ R, 0 ≤ f x)
  (hI : ∫ x in R, f x = 0) :
  ∃ E ⊆ R, outerMeasure E = 0 ∧ ∀ x ∈ R \ E, f x = 0 :=
by
  -- placeholder
  sorry

end
