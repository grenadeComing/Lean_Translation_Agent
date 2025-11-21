import Mathlib

open Set ENNReal

noncomputable section

/-- Two outer-measure-style infimum definitions over sequences vs countable families are equal. -/
theorem m_star_eq_mu_star (n : ℕ)
  (open_rect : Set (Fin n → ℝ) → Prop)
  (V : Set (Fin n → ℝ) → ℝ≥0∞)
  (tsum_seq : (ℕ → Set (Fin n → ℝ)) → ℝ≥0∞)
  (tsum_count : ∀ {I : Type}, (I → Set (Fin n → ℝ)) → ℝ≥0∞) :
  ∀ S : Set (Fin n → ℝ),
    (sInf { y : ℝ≥0∞ | ∃ (R : ℕ → Set (Fin n → ℝ)), (∀ j, open_rect (R j)) ∧ S ⊆ ⋃ j, R j ∧ y = tsum_seq R }) =
    (sInf { y : ℝ≥0∞ | ∃ (I : Type) (f : I → Set (Fin n → ℝ)) (hc : Countable I), (∀ i, open_rect (f i)) ∧ S ⊆ ⋃ i, f i ∧ y = @tsum_count I f }) :=
by sorry

end noncomputable section