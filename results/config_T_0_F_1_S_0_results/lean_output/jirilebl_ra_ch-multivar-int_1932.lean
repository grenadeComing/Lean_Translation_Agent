import Mathlib

/-!
Statement: Suppose X ⊆ ℝ^n is such that for every ε > 0 there exists a set Y ⊇ X with m^*(Y) ≤ ε,
where m^* is the outer measure on ℝ^n. Prove that X has measure zero (that is, m^*(X) = 0).

We formalize this by taking an arbitrary function mstar : Set (Fin n → ℝ) → ENNReal with the
monotonicity property of an outer measure (only monotonicity is needed for this statement),
and stating the implication. No proof is given (theorem ends with `by sorry`).
-/

variable {n : ℕ}

theorem jirilebl_ra_ch_multivar_int_1932
  (mstar : Set (Fin n → ℝ) → ENNReal)
  (mstar_mono : ∀ A B : Set (Fin n → ℝ), A ⊆ B → mstar A ≤ mstar B)
  (X : Set (Fin n → ℝ))
  (h : ∀ ε : ℝ, 0 < ε → ∃ Y : Set (Fin n → ℝ), X ⊆ Y ∧ mstar Y ≤ ENNReal.ofReal ε) :
  mstar X = 0 := by sorry
